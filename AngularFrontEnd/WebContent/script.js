	// create the module and name it scotchApp
	var scotchApp = angular.module('scotchApp', ['ngRoute']);

	// configure our routes
	scotchApp.config(function($routeProvider) {
		$routeProvider

			// route for the home page
			.when('/', {
				templateUrl : 'home.html',
				controller  : 'mainController'
			})

			// route for the about page
			.when('/login', {
				templateUrl : 'login.html',
				controller  : 'loginController'
			})

			// route for the contact page
			.when('/registration', {
				templateUrl : 'registration.html',
				controller  : 'registrationController'
			})
		
			.when('/blog', {
			templateUrl : 'blog.html',
			controller  : 'blogController'
			})
			
			.when('/forum', {
				templateUrl : 'forum.html',
				controller  : 'forumController'
			})
			
			.when('/friends', {
				templateUrl : 'friends.html',
				controller  : 'friendsController'
			});
		
	});

	// create the controller and inject Angular's $scope
	scotchApp.controller('mainController', function($scope) {
		// create a message to display in our view
		$scope.message = 'Everyone come and see how good I look!';
	});

	scotchApp.controller('loginController', function($scope) {
		$scope.message = 'Login';
	});

	scotchApp.controller('registrationController', function($scope) {
		$scope.message = 'Registration';
	});
	
	scotchApp.controller('blogController', function($scope) {
		$scope.message = 'Blog';
	});
	
	scotchApp.controller('friendsController', function($scope) {
		$scope.message = 'Friends';
	});
	
	scotchApp.controller('forumController', function($scope) {
		$scope.message = 'Forum';
	});