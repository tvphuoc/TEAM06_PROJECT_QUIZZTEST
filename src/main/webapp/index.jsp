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
    <title>Home</title>
</head>

<body ng-controller="teamController">
    <div class="container">
        <header ng-header></header>

        <nav ng-nav></nav>

        <div class="row">
            <div  class="col-sm-8">
                <div class="row">
                    <div ng-repeat="item in lists" class="col-sm-6 text-center">
                        <div class="card" style="width: 35rem; border: 1px solid #333333; margin-bottom: 5px;">
                            <img src="images/logos/{{item.Logo}}" class="card-img-top" alt="">
                            <div class="card-body" style="background-color: #cac3c3; padding: 5px;">
                                <h5 class="card-title">{{item.Name}}</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <aside ng-aside></aside>
        </div>

        <footer ng-footer></footer>
    </div>
</body>

</html>