//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
userSettings()
submitLike()
editProfile()
function userSettings(){
	var settlist = $('#gear')
	var settings = document.getElementById("settings")
	$(document).on('click',function(event){
		if(event.target.id != "gear"){
			settings.style.display = "none";
		}
	})
	settlist.click(function(){
		settings.style.display = "block";
	})
}
function submitLike(){
	$('#like-btn').click(function(){
		$('.edit_food_recipe').submit();
	})
}
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
