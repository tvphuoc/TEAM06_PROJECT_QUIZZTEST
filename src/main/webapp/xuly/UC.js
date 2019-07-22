(function () {
    'use strict';

var teamapp = angular.module('nhom06', [])

teamapp.controller('teamController', function ($scope) {

}).directive("ngHeader", function () {
    return {
        templateUrl: "UC/header.html"
    }
});

teamapp.controller('teamController', function ($scope) {

}).directive("ngNav", function () {
    return {
        templateUrl: "UC/nav.html"
    }
});

teamapp.controller('teamController', function ($scope) {

}).directive("ngAside", function () {
    return {
        templateUrl: "UC/aside.html"
    }
});

teamapp.controller('teamController', function ($scope) {

}).directive("ngFooter", function () {
    return {
        templateUrl: "UC/footer.html"
    }
});

    //get data of Subjects.js
    teamapp.controller('teamController', controllerRepeat);

    controllerRepeat.$inject = ['$scope', '$http'];

    function controllerRepeat($scope, $http) {

        $http({
            method: 'GET',
            url: 'db/Subjects.js'
        }).then(function successCallback(response) {
            // this callback will be called asynchronously
            // when the response is available
            var lists = response.data;
            $scope.lists = lists;
        }, function errorCallback(response) {
            // called asynchronously if an error occurs
            // or server returns response with an error status.
        });
    }

    //get data of Subjects.js (Nam)
    // teamapp.controller('teamController', function($scope, $http) {
    //     $http({
    //         method: 'GET',
    //         url: 'db/Subjects.js'
    //     }).then(function successCallback(response) {
    //         // this callback will be called asynchronously
    //         // when the response is available
    //         $scope.subjects = response.data;
    //     }, function errorCallback(response) {
    //         // called asynchronously if an error occurs
    //         // or server returns response with an error status.
    //     });
    // });

     //get data of ADAV.js
     teamapp.controller('teamController01', controllerRepeat01);

     controllerRepeat.$inject = ['$scope', '$http'];

     function controllerRepeat01($scope, $http) {

         $http({
             method: 'GET',
             url: '/THITRACNGHIEMTRUCTUYEN-master/db/Quizs/ADAV.js'
         }).then(function successCallback(response) {
             // this callback will be called asynchronously
             // when the response is available
             var adav = response.data;
             $scope.adav = adav;
             console.log(response.data)
         }, function errorCallback(response) {
             // called asynchronously if an error occurs
             // or server returns response with an error status.
             console.log(response.data)
         });
     }

})();
