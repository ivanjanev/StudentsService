angular.module('stdServices').controller('addNewCtrl',function ($scope,$http,$state) {
    $scope.formdata={};
    $scope.formSubject={};

    $scope.submit = function () {
        $http.post('addNew.php',$scope.formdata).then(function (response) {
            if(response.data == "done"){
                $state.go('students');
            }else
            {
                console.log(response.data);
            }
        });
    };
    $scope.submitGrade = function () {
        $http.post('addNewSubject.php',$scope.formSubject).then(function (response) {
            if(response.data == "done"){
                $state.go('students');
            }else
            {
                console.log(response.data);
            }
        });
    };
});