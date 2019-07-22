
var teamapp = angular.module('nhom06', []);

teamapp.controller('teamController', function ($scope, $http) {
    $http.get('./db/Subjects.js')
        .then(function(result){
            $scope.Subjects = result.data;                
        });
});