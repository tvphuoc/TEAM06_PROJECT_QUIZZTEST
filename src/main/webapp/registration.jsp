<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <title>Registration</title>
</head>

<body>
    <div class="container" style="margin-top: 3%">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-user"></span> <strong>REGISTRATION SYSTEM</strong>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" action="registration" >

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="username">User name:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="username" placeholder="Enter username"
                                        name="username">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="password">Pass word:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="password"
                                        placeholder="Enter password" name="password">
                                </div>
                            </div>

 							<!--<div class="form-group">
                                <label class="control-label col-sm-2" for="fullname">Full name:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="fullname" placeholder="Enter fullname"
                                        name="fullname">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="email">Email:</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="email" placeholder="Enter email"
                                        name="email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="gender">Gender</label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label><input type="radio" name="gender" checked>Male</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="gender">Female</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="birthday">Birthday:</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="birthday" placeholder="Enter birthday"
                                        name="birthday">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="repassword">Repass word:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="repassword"
                                        placeholder="Enter repassword" name="repassword">
                                </div>
                            </div> -->
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary">Registration</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</body>

</html>