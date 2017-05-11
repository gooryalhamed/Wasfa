//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets

AdminList();
showSidebar();
function AdminList(){
	var menu = $('#navbar .dropdown')
	$(document).on('click',function(event){
		if(event.target.id != "admin-menu" && !menu.has(event.target).length) {
			document.getElementById("admin-menu").style.display = "none"
		}
	})
	menu.on('click',function(e){
		if(document.getElementById("admin-menu").style.display=="none"){
			document.getElementById("admin-menu").style.display = "block"
		}
		else{
			document.getElementById("admin-menu").style.display = "none"
		}
	})
}
function showSidebar(){
	var bars = $('.navbar-header .fa-bars');
	bars.click(function(e){
		if(document.getElementById("sidebar").style.display == "none"){
			document.getElementById("sidebar").style.display = "block";
		}
		else{
			document.getElementById("sidebar").style.display = "none";
		}

	})
}