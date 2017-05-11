//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
userSettings()
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


