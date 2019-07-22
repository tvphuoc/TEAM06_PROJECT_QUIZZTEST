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

    <title>Change password</title>
</head>

<body>
    <div class="container" style="margin-top: 10%">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-user"></span> <strong>CHANGE PASSWORD</strong>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" action="xuly/">
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="password">Password old:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="password" placeholder="Enter password"
                                        name="password">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-2" for="passwordnew">Password new:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="passwordnew"
                                        placeholder="Enter password new" name="passwordnew">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="repasswordnew">Repassword new:</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="repasswordnew"
                                        placeholder="Enter repassword new" name="repasswordnew">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary">Change password</button>
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