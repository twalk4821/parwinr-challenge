angular.module('parwinr')
.directive('videoList', () ->  
	scope: {
		videos: '<'
	},
	restrict: 'E',
	controller: 'videoListCtrl',
	controllerAs: 'videoList',
	bindToController: true,
	templateUrl: 'videoList.html'
)
.controller('videoListCtrl', ($scope) ->
	console.log(this)
	this.max = 5
	this.setMax = () ->
		if this.videos
			if this.videos.length < 5 then this.max = this.videos.length


	this.rangeFromMax = (max) -> 
    	return new Array(max) 
	this.incrementMax = () -> 
		this.max += 5

	$scope.rangeFromMax = this.rangeFromMax
	$scope.incrementMax = this.incrementMax
	$scope.max = this.max
)