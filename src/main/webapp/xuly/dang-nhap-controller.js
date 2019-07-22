
teamapp.controller('loginController', ['$scope', '$http', '$window', 'userService', function ($scope, $http, $window, userService) {

    $scope.login = login;
    $scope.loadStudenList = loadStudenList;

    function loadStudenList() {
      return $http.get('./db/Students.js')
          .then(function(result){
              return result.data;
          });
    }

    function validateUsernameAndPassword(username, password, studentsList) {
      for(var i = 0; i < studentsList.length; i++) {
        var student = studentsList[i];
        if(username.toLowerCase() === student.username.toLowerCase() &&
          password === student.password) {
            userService.currentUser = student;
            return true;
          }
      }
      return false;
    }

    function login(username, password) {
      $scope.errorMessage = '';
      if(userService.allUsers && userService.allUsers.length > 0) {
        var loginOk = validateUsernameAndPassword(username, password, userService.allUsers);
        if(loginOk) {
          $window.location.href = 'app.html/';
        }else {
          $scope.errorMessage = 'Invalid username or password';
        }
      } else {
        loadUsersAndLogin(username, password);
      }
    }

    function loadUsersAndLogin(username, password) {
      $scope.errorMessage = '';
      $scope.loadStudenList().then(function(data) {
        if(data && data.length > 0) {
          userService.allUsers = data;
          var loginOk = validateUsernameAndPassword(username, password, data);
          if(loginOk) {
            $window.location.href = 'app.html/';
          }else {
            $scope.errorMessage = 'Invalid username or password';
          }
        }
      });
    }
}]);
