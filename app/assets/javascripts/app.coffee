parwinr = angular.module('parwinr',[
	'templates',
  	'ngRoute',
])

parwinr.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
      )
])

