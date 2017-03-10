let locations = [
  {city: "Washington", state: "DC", country: "USA", image: ""}

]


angular
  .module("touristapp", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  // For when we have Rails setup
  // .factory("LocationFactory", [
  //   "$resource",
  //   LocationFactoryFunction
  // ])
  .controller("LocationIndexController", [
    "$stateParams",
    "$state",
    // Needed for rails
    // "LocationFactory",
    LocationIndexControllerFunction
  ])

function RouterFunction($stateProvider){
  $stateProvider
    .state("locationIndex", {
      url: "/locations",
      templateUrl: "js/ng-views/location-index.html",
      controller: "LocationIndexController",
      controllerAs: "vm"
    })
}

// Needed for rails
// function LocationFactoryFunction($resource) {
//   return $resource("http://localhost:3000/locations/:id", {}, {
//     update: { method: "PUT" }
//   })
// }


function LocationIndexControllerFunction($stateParams, $state) {
  this.locations = locations;
}
