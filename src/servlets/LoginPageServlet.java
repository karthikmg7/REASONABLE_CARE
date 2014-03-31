package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mainEntities.Doctor;
import mainEntities.DoctorCRUDoperations;
import mainEntities.Nurse;
import mainEntities.NurseCRUDoperations;
import mainEntities.Student;
import mainEntities.StudentCRUDoperations;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;

/**
 * Servlet implementation class LoginServlet
 */

public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentCRUDoperations studentCRUDoperations;
	DoctorCRUDoperations doctorCRUDoperations;
	NurseCRUDoperations nurseCRUDoperations;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginPageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("***In get***");
		System.out.println("***In init***");
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Beans.xml");
		/*
		 * ServletContext servletContext = this.getServletContext();
		 * WebApplicationContext applicationContext =
		 * WebApplicationContextUtils.getWebApplicationContext(servletContext);
		 */
		studentCRUDoperations = (StudentCRUDoperations) context
				.getBean("studentEntity");
		System.out.println("***In init***");

		studentCRUDoperations = (StudentCRUDoperations) context
				.getBean("studentEntity");
		doctorCRUDoperations = (DoctorCRUDoperations) context
				.getBean("doctorEntity");
		nurseCRUDoperations = (NurseCRUDoperations) context
				.getBean("nurseEntity");
		String userId = request.getParameter("loginId");
		String password = request.getParameter("password1");
		try {
			Student stu = studentCRUDoperations.getStudent(userId);
			HttpSession session = request.getSession();
			session.setAttribute("userRole", "Student");
			session.setAttribute("object",stu);
			//response.sendRedirect("/WEB-INF/welcomeStudent.jsp");
			//response.sendRedirect(request.getContextPath()+"/pages/welcomeStudent.jsp");
			request.getRequestDispatcher("/WEB-INF/welcomeStudent.jsp").forward(request, response);
				
			
		} catch (EmptyResultDataAccessException e) {
			try {
				Doctor doc = doctorCRUDoperations.getDoctor(userId);
			} catch (EmptyResultDataAccessException e1) {
				try {
					Nurse nurse = nurseCRUDoperations.getNurse(userId);
				} catch (EmptyResultDataAccessException e2) {
					response.sendRedirect("InvalidLogin.jsp");

				}
			}

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
