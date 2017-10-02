/**
 * Created by ivanj on 31-Aug-17.
 */
angular.module('stdServices').controller('logoutCtrl',function ($scope,$http,$window) {
    $scope.logout=function ($event) {
        $event.preventDefault();
        $http.get('logout.php').then(function (resp) {
            $window.location.href='home.html';
        });

    };
});