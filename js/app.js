/**
 * Created by ivanj on 29-Aug-17.
 */

var app = angular.module('stdServices',["ui.router","ui.bootstrap"]);

app.config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider.otherwise('/home');

    $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'pages/homeView.htm',
            controller: 'homeCtrl'
        })
        .state('admin', {
            url: '/admin',
            templateUrl: 'admin.html'
        })
        .state('students',{
            url:'/students',
            templateUrl: 'pages/students.htm',
            controller: 'studentsCtrl'
        })
        .state('student',{
            url:'/students/:id',
            templateUrl: 'pages/student.htm',
            controller: 'studentCtrl'
        })
        .state('subjects',{
            url:'/subjects',
            templateUrl:'pages/subjects.htm',
            controller: 'subjectsCtrl'
        })
        .state('addNew',{
            url:'/addNew',
            templateUrl:'pages/addNew.htm',
            controller: 'addNewCtrl'
        })
});
