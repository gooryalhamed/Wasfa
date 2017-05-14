//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
userSettings()
submitLike()
function userSettings(){
	var settlist = $('.container .fa-cog')
	$(document).on('click',function(event){
		if(event.target.id != "gear"){
			document.getElementById("settings").style.display = "none";
		}
	})
	settlist.click(function(){
		document.getElementById("settings").style.display = "block";
	})
}
function submitLike(){
	$('#recipe-imgs .like-btn').click(function(){
		$('.edit_food_recipe').submit();
	})
}


