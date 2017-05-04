//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
$(document).ready(function(){
	AdminList()
})

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
