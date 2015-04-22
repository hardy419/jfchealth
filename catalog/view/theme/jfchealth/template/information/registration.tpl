<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="cont-right right">
	<?php echo $content_top; ?>
		<div class="registration_title"></div>
		<div class="registration_content pad-B10">
		
	  <form name='registration' action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		<table cellspacing="1" cellpadding="6" border="0" width="550" style="margin-left:14px;">
		<tbody><tr><td valign="top" colspan="2"></td>
		</tr>
		<tr>
			<td width="35%">Warranty Registration:</td>	
		</tr>
		<tr><td>Last Name:</td>
			<td><input type="text" value="" size="41" name="Last_Name"><br /><?php echo !empty($Last_Name)?'<font style="color:#F00; font-size: 12px;">'.$Last_Name.'</font>':'';?>
		</td>	
		</tr>
		<tr>
			<td>First Name:</td>
			<td><input type="text" value="" size="41" name="First_Name"><br /><?php echo !empty($First_Name)?'<font style="color:#F00; font-size: 12px;">'.$First_Name.'</font>':'';?></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="text" value="" size="41" name="Email"><br /><?php echo !empty($Email)?'<font style="color:#F00; font-size: 12px;">'.$Email.'</font>':'';?></td>
		</tr>
		<tr>
			<td>Name of Dealer:</td>
			<td>
			<select name="Name_of_Dealer_d" id="Name_of_Dealer_d" style="width:60px;">
			</select> - 
			<select name="Name_of_Dealer_m" id="Name_of_Dealer_m" style="width:60px;">
			</select> - 
			<select name="Name_of_Dealer_y" id="Name_of_Dealer_y" style="width:100px;">
			</select></td>
		</tr>
		<tr>
			<td>Purchase Price:</td>
			<td><input type="text" value="" size="41" name="Purchase_Price"></td>
		</tr>
		<tr>
			<td>Date of Purchase:</td>
			<td><input type="text" value="" size="41" name="Date_of_Purchase"></td>
		</tr>
		<tr>
			<td>Warranty Card Number:</td>
			<td><input type="text" value="" size="41" name="Warranty_Card_Number"></td>
		</tr>
		<tr>
			<td>Model Number:</td>
			<td><input type="text" value="" size="41" name="Model_Number"></td>
		</tr>
		<tr>
			<td>Serial Number:</td>
			<td><input type="text" value="" size="41" name="Serial_Number"></td>
		</tr>
		
		<tr><td></td>
		  <td><img class="contact_send" onclick="document.forms['registration'].submit()" src="catalog/view/theme/dared/images/btn_send_blue.png">
		    </td>
		  </tr>
	</tbody></table>
  </form>
		</div>
</div>
<script>
$().ready(function (){
	Name_of_Dealer_d='<option value=""></option>';
	Name_of_Dealer_m='<option value=""></option>';
	Name_of_Dealer_y='<option value=""></option>';
	var myDate = new Date();
	year=myDate.getFullYear();
	v='';
	for(i=1;i<=31;i++)
	{
		v=i<10?'0'+i:i;
		Name_of_Dealer_d+='<option value="'+v+'">'+v+'</option>'
	}
	for(i=1;i<=12;i++)
	{
		v=i<10?'0'+i:i;
		Name_of_Dealer_m+='<option value="'+v+'">'+v+'</option>'
	}
	for(i=2000;i<=year;i++)
	{
		Name_of_Dealer_y+='<option value="'+i+'">'+i+'</option>'
	}
	$('#Name_of_Dealer_d').html(Name_of_Dealer_d);
	$('#Name_of_Dealer_m').html(Name_of_Dealer_m);
	$('#Name_of_Dealer_y').html(Name_of_Dealer_y);
})
</script>
<?php echo $footer; ?>