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
    <title>Ask and answer</title>
</head>

<body ng-controller="teamController">
    <div class="container">
        <header ng-header></header>

        <nav ng-nav></nav>

        <div class="row">
            <article class="col-sm-8">
                <p>Nội dung chèn ở đây</p>
            </article>

            <aside ng-aside></aside>
        </div>

        <footer ng-footer></footer>
    </div>
</body>

</html>
