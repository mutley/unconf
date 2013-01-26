Handlebars.registerHelper "ifLoggedIn", (options) ->
  if Unconf.loggedIn()
    options.fn this
  else
    options.inverse this
