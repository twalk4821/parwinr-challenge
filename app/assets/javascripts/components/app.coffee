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

angular.module('parwinr')
.directive('app', () ->
	scope: {}
	restrict: 'E'
	controller: 'appCtrl'
	controllerAs: 'app'
	bindToController: true
	templateUrl: 'app.html'
)
.controller('appCtrl', ($scope, $http) ->
	$scope.videos = []	

	$scope.getVideos = () ->
		$http.get('/videos.json')
	      .then(((data) ->
	      	videos = data.data
	      	for video in videos
	      		this.videos.push(video.address)
	      	).bind(this))
	      .then(() -> 
	      	console.log($scope, this)) 
	$scope.getVideos()


	$scope.handleClick = (row) ->
		$scope.incrementRows(row)

	$scope.rows = {
		1:1
		2:3
		3:1
	}
	$scope.rangeFromNumber = (num) -> 
    	return new Array(num) 
	$scope.incrementRows = (row) -> 
		this.rows[row] += 1
)