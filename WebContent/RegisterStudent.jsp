<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
    <title>New Page</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootswatch/3.0.0/cyborg/bootstrap.min.css">
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
     <link href="css/customStyle.css" rel="stylesheet">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 function resetForm()
 {
 
 $("#SubmitForm").get(0).reset();
 }
 </script>
  </head>
  
  <body>
  <div id="fullBg" />
    <div class="container">
      <h1 class="page-header RegisterFormFontColor RegisterFormHeader" id="Header">Hello!! Please Fill In the form below to Register. It won't take long.. :-)</h1>
   
<div class="row">
     <div class="col-xs-12 col-md-8">
      <form id="SubmitForm">
        <div>
          <label class="control-label RegisterFormFontColor">Name :</label>
          <div class="controls">
            <input type="text" class="form-control" name="StudentName" placeholder="We are sure you have one!" id="StudentName">
            <div class="form-group">
              <label class="control-label RegisterFormFontColor">Login ID :</label>
              <div class="controls">
                <input type="text" class="form-control" name="LoginId" placeholder="Example: cruella, devil..etc" id="LoginId">
                <div class="form-group">
                  <label class="control-label RegisterFormFontColor">Password :</label>
                  <div class="controls">
                    <input type="text" class="form-control" name="Password1" placeholder="Psst!!.. Make sure no onez peeping.." id="Password1">
                    <div class="form-group">
                      <label class="control-label RegisterFormFontColor">Address :</label>
                      <textarea class="form-control" placeholder="Where do you live?" name="Address" id="Address"></textarea>
                      <div class="form-group">
                        <label class="control-label RegisterFormFontColor">Phone Number :</label>
                        <div class="controls">
                          <input type="text" class="form-control" placeholder="xxx-xxx-xxxx" name="PhoneNumber" id="PhoneNumber">
                          <div class="form-group">
                            <label class="control-label RegisterFormFontColor">Health Insurance Company :</label>
                            <div class="controls">
                              <input type="text" class="form-control" name="HealthInsuranceCompany" placeholder="What's your Provider's Name" id="HealthInsuranceCompany">
                              <div class="form-group">
                                <label class="control-label RegisterFormFontColor">Health Insurance Number :</label>
                                <div class="controls">
                                  <input type="text" class="form-control" name="HealthInsuranceNumber" placeholder="Be Careful while you enter this..else..ul bare the brunt later :-)" id="HealthInsuranceNumber">
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </form>
      </div>
      <div class="col-xs-6 col-md-4 submitbutton">
       <a class="btn btn-block btn-primary" id="FormReset" onclick="resetForm()" >Reset</a>
        <a class="btn btn-block btn-primary" id="FormSubmit">Submit!</a>
		</div>
    </div>
    </div>
   
  </body>


</html>