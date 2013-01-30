Handlebars.registerHelper "ifLoggedIn", (options) ->
  if Unconf.loggedIn()
    options.fn this
  else
    options.inverse this

Handlebars.registerHelper "debug", (optionalValue) ->
  console.log("Current Context")
  console.log("====================")
  console.log(this)

  if (optionalValue)
    console.log("Value")
    console.log("====================")
    console.log(optionalValue)
