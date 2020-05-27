// Code goes here

var myApp = angular.module("myApp", ['angularjs-dropdown-multiselect']);

myApp.controller("MyController", ["$scope", function($scope) {
  $scope.message = "Angularjs-multiselect-dropdown";
  $scope.model = [
    {
      id: 1
    }, {
      id: 3
    }
  ]; 
  $scope.data = [
    {
      id: 1, label: "David", group: "A"
    }, {
      id: 2, label: "Jhon", group: "B"
    }, {
      id: 3, label: "Danny", group: "C"
    }
  ];

  $scope.events = {
    onItemSelect: function(item) {
      console.log(item, 'item selected');
    },
    onItemDeselect: function(item) {
      console.log(item, 'item deselected');
    },
    onSelectAll: function() {
      console.log('select all');
    },
    onDeselectAll: function() {
      console.log('deselect all');
    },
    onSelectionChanged: function() {
      console.log('on selection changed')
    }
  };

  $scope.settings = {
    selectByGroups: ['A']
  };
}]);