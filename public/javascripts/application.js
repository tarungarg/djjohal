// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery(document).ready(function(){

  jQuery('#add-singer').click(function(){
    name = jQuery('#singer-name').val()
    regx = /^([^0-9]*)$/
    if (regx.test(name)) {	
     jQuery.ajax({
        type: "POST",
        url: "/singers", //sumbits it to the given url of the form
        data: { singer : { name: name } },
        dataType: "HTML"
    }).success(function(data){
    	jQuery('#user_nav').remove();
      jQuery('#singer-list').html(data)
    });
  } else {
  	jQuery('#error_msg').html("Please do not enter digits")
  }
  });
});