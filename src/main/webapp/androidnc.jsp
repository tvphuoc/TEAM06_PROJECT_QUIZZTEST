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
    <title>Android nc</title>
</head>

<body ng-controller="teamController01">
    <div class="container">
        <header ng-header></header>
        <nav ng-nav></nav>
        <div class="row">
            <div class="col-sm-8">
                <div class="row">
                    <div ng-repeat="item in adav" class="col-sm-12 text-center">
                        <h5>{{item.Id}}</h5>
                        <h5>{{item.Text}}</h5>
                        <div ng-repeat="item1 in item.Answers">
                            <h5>{{item1.Id}}</h5>
                            <h5>{{item1.Text}}</h5>
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
