$(document).ready(function(){
	$("form").submit(function(event){
		event.preventDefault();

		var todo_item = $("input#todo").val();

		var new_todo_item = $("<li><input type='checkbox'/>" + todo_item + "</li>".on(click)
			$(this).toggleClass("completed");
		});

	$("ul").append(new_todo_item);

	$("input#todo").val("");
	});
});