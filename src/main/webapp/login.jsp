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

    <title>Login</title>
</head>

<body>
    <div class="container" style="margin-top: 10%">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-log-in"></span> <strong>LOGIN SYSTEM</strong>
                    </div>
                    <div class="panel-body">
                        <form name="loginForm" action="<%=request.getContextPath()%>/login" class="form-horizontal" method = "post">
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
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label><input type="checkbox" name="remember"> Remember me</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                <input type="submit" value="Login" name="submit">
                                    <a href="#">Forgot Your Password?</a>
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