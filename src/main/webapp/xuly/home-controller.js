teamapp
  .controller('homeController', ['$scope', '$http', 'userService', function ($scope, $http, userService) {
    console.log(userService.currentUser);
    $scope.currentUser = userService.currentUser;
}]);
