<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html ng-app="nhom06">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/angular.min.js"></script>
    <script src="xuly/UC.js"></script>
    <title>Test Code</title>
</head>

<body ng-controller="teamController">
    <div class="container">
        <header ng-header></header>

        <nav ng-nav></nav>


        <div class="row">
            <article class="col-sm-8">
                <div class="row">
                    <div class="col-sm-offset-1 col-sm-5">
                        <div class="panel-default">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <img class="img-responsive" src="images/logos/ADAV.jpg" alt="banner"
                                         style="width:100%">
                                </div>
                                <div class="panel-footer text-center">
                                    Lập trình android nâng cao
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="panel-default">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <img class="img-responsive" src="images/logos/WEBU.jpg" alt="banner"
                                         style="width:100%">
                                </div>
                                <div class="panel-footer text-center">
                                    Xây dựng trang web
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-offset-1 col-sm-5">
                        <div class="panel-default">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <img class="img-responsive" src="images/logos/DBBS.png" alt="banner"
                                         style="width:100%">
                                </div>
                                <div class="panel-footer text-center">
                                    Cơ sở dữ liệu
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="panel-default">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <img class="img-responsive" src="images/logos/DBAV.png" alt="banner"
                                         style="width:100%">
                                </div>
                                <div class="panel-footer text-center">
                                    SQL Server
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>

            <aside ng-aside></aside>
        </div>

        <footer ng-footer> </footer>
    </div>
</body>

</html>