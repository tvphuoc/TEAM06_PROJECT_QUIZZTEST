teamapp
  .factory('userService', ['$http', function ($http) {
    var service = this;

    service.allUsers = [];
    service.currentUser = {};

    if(service.allUsers && service.allUsers.length === 0) {
      // console.log('load all users');
      $http.get('./db/Students.js')
          .then(function(result){
              service.allUsers = result.data;
          });
    }

    return service;
}]);
