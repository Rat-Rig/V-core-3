window.CI360.init();
app.document$.subscribe(function() {
    var tables = document.querySelectorAll("article table")
    tables.forEach(function(table) {
      new Tablesort(table)
    })
  })
