$(document).ready(function(){
    $("#draggable-section img").draggable({
		appendTo:"body",
		helper:"clone",
		revert: "invalid",
		cursor:"move"
	});
	$(".set-permission-group").droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop:function(event, ui){
			var $imagePath = ui.draggable.attr('src');
			$( "<li id='allen1'><img class='dragged-image' src="+$imagePath+"><br/><a id='delete-user' class='pull-right' href='#' onclick='javascript:deleteImage();'>Delete</a></li>" ).appendTo(this);
		}	
	});
	function deleteImage($item){
		$(".set-permission-group").find('li').remove();
		// $(this).remove();
	}
});