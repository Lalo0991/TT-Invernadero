'use strict'

###*
 # @ngdoc overview
 # @name ttInvernaderoApp
 # @description
 # # ttInvernaderoApp
 #
 # Main module of the application.
###
angular
  .module 'ttInvernaderoApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/usuario',
        templateUrl: 'views/usuario.html'
        controller: 'UserCtrl'
        controllerAs: 'usuario'
      .when '/variables',
        templateUrl: 'views/variables.html'
        controller: 'VariablesCtrl'
        controllerAs: 'usuario'
      .when '/especies',
        templateUrl: 'views/especies.html'
        controller: 'EspeciesCtrl'
        controllerAs: 'especies'
      .otherwise
        redirectTo: '/'
  
  $scene = $('#scene').parallax()
  $scene.parallax 'enable'
  $scene.parallax 'disable'
  $scene.parallax 'updateLayers'
  $scene.parallax 'calibrate', false, true
  $scene.parallax 'invert', false, true
  $scene.parallax 'limit', false, 10
  $scene.parallax 'scalar', 2, 8
  $scene.parallax 'friction', 0.2, 0.8
  $scene.parallax 'origin', 0.0, 1.0
    

