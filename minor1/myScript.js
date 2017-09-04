$(document).ready(function () {
		$("#suggest").keypress(function(){
			$.get("suggest.php", {cmdsearch: $(this).val()}, function(data){
				$("datalist").empty();
				$("datalist").html(data);
			});
		});
	});