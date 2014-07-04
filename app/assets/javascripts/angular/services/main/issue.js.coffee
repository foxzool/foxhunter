
@app.factory "Issue", ["$resource", ($resource) ->
  $resource("/api/issues/:id",
    {id: "@id"},
    {
      create: {method: "POST"}
      index: {method: "GET", isArray: true}
      show: {method: "GET", isArray: false}
      update: {method: "PUT"}
      destroy: {method: "DELETE"}
    }
  )
]


