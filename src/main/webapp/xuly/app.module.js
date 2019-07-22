var teamapp = angular.module('nhom06', [
  'ngRoute'
]);

teamapp.
  config(['$routeProvider', '$locationProvider',
    function config($routeProvider, $locationProvider) {
      // $locationProvider.html5Mode(true);
      $routeProvider.
        when('/', {
          templateUrl: 'home.html',
          controller: 'homeController'
        }).
        when('/home', {
          templateUrl: 'home.html',
          controller: 'homeController'
        }).
        when('/login', {
          templateUrl: 'login.html',
          controller: 'loginController'
        }).
        when('/register', {
          templateUrl: 'registration.html',
          controller: 'registerController'
        })
        .otherwise({
          redirectTo: '/'
        });
    }
  ]);

teamapp
  .directive("ngHeader", function () {
      return {
          templateUrl: "UC/header.html"
      }
  })
  .directive("ngNav", function () {
      return {
          templateUrl: "UC/nav.html"
      }
  })
  .directive("ngAside", function () {
      return {
          templateUrl: "UC/aside.html"
      }
  })
  .directive("ngFooter", function () {
      return {
          templateUrl: "UC/footer.html"
      }
  });
