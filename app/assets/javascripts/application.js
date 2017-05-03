//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
$(document).ready(function(){
	AdminList()
})

function AdminList(){
	var menu = $('#navbar .dropdown')
	menu.on('click',function(e){
		if(document.getElementById("admin-menu").style.display=="none"){
			document.getElementById("admin-menu").style.display = "block"
		}
		else{
			document.getElementById("admin-menu").style.display = "none"
		}
		if(e.target.id != menu.attr('id') && !menu.has(e.target).length) {
			document.getElementById("admin-menu").style.display = "none"
		}
	})
}
