function reportError(e) {
  if (typeof Airbrake != "undefined")
    Airbrake.notify(e);
}

// Tell jQuery to watch for any 401 errors and handle them appropriately
$.ajaxSetup({
  statusCode: {
    401: function(){
      if (Unconf.session) {
        Unconf.session.logOut();
      }
    },
    500: function(e){
      reportError(e);
      console.log('500 ERROR. Uncaught exception in Ruby?');
      alert('There was a problem with the server. Please try again later. (Error: 500)');
    }
  }
});
