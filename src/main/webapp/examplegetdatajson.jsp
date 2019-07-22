<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html ng-app="nhom06">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/angular.min.js"></script>
    <script src="xuly/XuLyLayDL.js"></script>
    <title>Example get data json</title>

</head>
<body>
    <div ng-controller="teamController" ng-init="DemoMessage='Quy Ken'">
        <div ng-repeat="t in Subjects">{{t.Name}}</div>
    </div>
</body>
</html>