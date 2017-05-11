//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
editProfile()
function editProfile(){
	$('.profile .edit-username').click(function(){
		document.getElementById("user_username").readOnly = false;
		document.getElementById("user_username").focus();
	})
	$('.profile .edit-email').click(function(){
		document.getElementById("user_email").readOnly = false;
		document.getElementById("user_email").focus();
	})
}
