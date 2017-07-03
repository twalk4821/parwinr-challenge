
angular.module('parwinr')
.directive('videoListItem', () ->  
	scope: {
		video: '<'
	},
	restrict: 'E',
	controller: 'videoListItemCtrl',
	controllerAs: 'videoListItem',
	bindToController: true,
	templateUrl: 'videoListItem.html',
	link: (scope, element, attrs) ->
			video = element[0].children[0]
			url = scope.videoListItem.video
			video.src = url
)
.controller('videoListItemCtrl', ['$scope', ($scope) ->
	if this.video then scope.setVideo()
])