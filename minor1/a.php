<script>
$(document).ready(function(){
	$("#search-box").keyup(function(){
		$.ajax({
		type: "POST",
		url: "readCountry.php",
		data:'keyword='+$(this).val(),
		beforeSend: function(){
			$("#search-box").css("background","#FFF url(images/LoaderIcon.gif) no-repeat 165px");
		},
		success: function(data){
			$("#suggesstion-box").show();
			$("#suggesstion-box").html(data);
			$("#search-box").css("background","#FFF");
		}
		});
	});
});

function selectCountry(val) {
$("#search-box").val(val);
$("#sourcecode").val(val);
$("#suggesstion-box").hide();
}
</script>





<div >
	<pre style="background-color: #ffffff; border: none;">
		
	</pre>
</div>


<div>
	<table width="100%" border="0" cellspacing="5" cellpadding="5">
		<tr>
			<td width="48%" scope="col">&nbsp;
			</td>
			<td width="48%" scope="col" align="left">
				<input type="button" name="" onclick="runcode()" value="Run Code">
			</td>
		</tr>
		<tr>
			<td height="50%" align="center">
					<div class="frmSearch1">
						<input type="text" id="search-box" placeholder="Selct query">
						<div id="suggesstion-box"></div>
					</div>


				<div>
					<?php include("buttons.php"); ?>
				</div>				
			</td>
			
			<td rowspan="2" align="center">
				<strong>Output</strong>
				<iframe src="" name="targetcode" id="targetcode"></iframe>
			</td>
		</tr>
		<tr>
			<td height="50%" align="center">
				<form class="ta">
				
					<strong>Code</strong>
					<textarea name="sourcecode" id="sourcecode">

					</textarea>
				</form>
				<button class="button button2">Submit</button>
			</td>
		</tr>
	</table>

	

</div>
<br><br>