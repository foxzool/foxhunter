@IssueCtrl = ["$scope", "Issue", ($scope, Issue) ->

  $scope.issues = Issue.query()
  $scope.addIssue = ->
    issue = Issue.save($scope.newIssue)
    console.log(issue)
    $scope.issues.push(issue)
    $scope.newIssue = {}

  $scope.orderProp = 'created_at'
]


@IssueCtrl2 = ["$scope", ($scope) ->

]