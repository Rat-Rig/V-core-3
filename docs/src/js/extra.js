app.document$.subscribe(function() {
  window.CI360.init();
  var tables = document.querySelectorAll("article table")
  tables.forEach(function(table) {
    new Tablesort(table)
  })
})
