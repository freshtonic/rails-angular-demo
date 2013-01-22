
module = angular.module('tractors', ['catalogue'])

module.controller 'CatalogueController', ['$scope', 'tractors',
  class CatalogueController
    constructor: ($scope, tractors) ->
      $scope.tractors = tractors
]

module.controller 'ImagesController', ['$scope', 

  class ImagesController
    constructor: ($scope) ->
      $scope.current = 0;
      $scope.image = $scope.tractor.images[$scope.current]

      $scope.prev = ->
        $scope.current -= 1
        $scope.image = $scope.tractor.images[$scope.current]

      $scope.next = ->
        $scope.current += 1
        $scope.image = $scope.tractor.images[$scope.current]

]
