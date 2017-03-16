(function(){
  "use strict";

  angular.module("app").controller("companyCtrl", function($scope, $http){
    $scope.setup = function(companyId){
      $http.get("/api/companies/" + companyId + ".json").then(function(response){
        $scope.company = response.data;

      });
    }

    $scope.set = function(current_user){
      $http.setup = function(userId){
        $scope.user_id = response.data;
      }
    }

    $scope.toggleOrder = function(attribute){
      $scope.orderAttribute = attribute;
    }

    // $scope.addTrip =function(origin, destination, price, number_person, duration, departure){
    //   var trip = {
    //     origin: origin,
    //     destination: destination,
    //     price: price,
    //     number_person: number_person,
    //     duration: duration,
    //     departure: departure
    //   };
    //   $http.post("/api/companies/". + companyId + ".json", trip).then(function(response){
    //     var index = $scope.trips.indexOf(trip);
    //     $scope.company[index] = response.data;
    //   });
    // }

    window.$scope = $scope;
  });
})();