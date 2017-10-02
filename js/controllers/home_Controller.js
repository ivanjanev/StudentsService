/**
 * Created by ivanj on 31-Aug-17.
 */
angular.module('stdServices').controller('homeCtrl',function ($scope,$http,$window) {
    $scope.visibility = false;
    $scope.warning = '';
    $scope.username = '';
    $scope.password = '';
    $scope.Login = function ($event) {
        $event.preventDefault();
        if($scope.username.length == 0 || $scope.password.length == 0){
            $scope.warning = "All fields are required";
            $scope.visibility = true;
        }
        else{
            var data = {
                email : $scope.username,
                password : $scope.password
            };
            $http.post('login.php',data).then(function (resp) {
                var status = resp.data;
                console.log(resp);
                if(status == 2)
                {
                    $scope.warning = "No such email/password combination!";
                    $scope.visibility = true;
                }
                if(status == 1)
                {
                    $window.location.href="admin.html#!/students";
                }
            });
        }
    }
});