/**
 * Created by ivanj on 31-Aug-17.
 */
angular.module('stdServices').controller('studentCtrl',
    function($scope,$stateParams,$http) {
        $scope.indeks = $stateParams.id;
        var ind = $scope.indeks;
        var data = {
            indeks:ind
        };
        $http.post('studentSubjects.php',data).then(function (response) {
            $scope.subjects = response.data;
        });

    });