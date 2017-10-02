/**
 * Created by ivanj on 31-Aug-17.
 */
angular.module('stdServices').controller('subjectsCtrl',function ($scope,$http) {
    var data = {
        subject:"yes"
    };
    var arrayForChart=[];
    $http.post('subjects.php',data).then(function (response) {
        $scope.subs = response.data;
        var percent = response.data;

        percent.forEach(function (t) {
            arrayForChart.push([t.name,t.listenedPercent]);
        });
        $scope.chartData = arrayForChart;
        console.log($scope.chartData);
    });

    $scope.search={};

});