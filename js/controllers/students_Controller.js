/**
 * Created by ivanj on 31-Aug-17.
 */
angular.module('stdServices').controller('studentsCtrl',function ($scope,$http) {
    $http.get('students.php').then(function (resp) {
        $scope.stds = resp.data;
    });
    $scope.search = {};
});