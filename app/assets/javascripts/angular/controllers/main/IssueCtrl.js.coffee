@IssueIndexCtrl = ["$scope", "Issue", ($scope, Issue) ->
  $scope.issues = Issue.query()
  $scope.addIssue = ->
    console.log('add issue')
    $scope.newIssue = {name: "", context: ""}
    success = (response) ->
      console.log "success", response

    failure = (response) ->
      console.log "failure", response
      _.each response.data, (errors, key) ->
        _.each errors, (e) ->
          $scope.form[key].$dirty = true
          $scope.form[key].$setValidity e, false

    issue = Issue.create($scope.newIssue, success, failure)
    $scope.issues.push(issue)
    $scope.newIssue = {name: "", context: ""}
]

@IssueShowCtrl = ["$scope", "$routeParams", "Issue", ($scope, $routeParams, Issue) ->
  $scope.issue = Issue.show({ id: $routeParams.id });
]