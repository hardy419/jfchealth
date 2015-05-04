<?php echo $header; ?>

<div class="content">
	<div class="left-nav">
		<ul>
			<li><a href="index.php?route=information/contactus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_address.png" width="100" height="18" border="0" id="Image11" onmouseover="MM_swapImage('Image11','','<?PHP echo $dir_image_lang; ?>btn_contactus_address_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_contactus_form_mo.png" width="100" height="18" /></li>
		</ul>
	</div>
	<div class="right-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_enquiry_title.png" width="670" height="34" />
		</div>
		<div class="description">
            <p class="index_content_txt"><?PHP echo $text_notice; ?></p>
            <p class="index_content_txt"><?PHP echo $text_notice_required; ?></p>
            <form action="?route=information/enquiry/formSubmit" method="POST" id="enquiry_form">
                <table width="670" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="100"><p class="index_content_txt"><?PHP echo $text_name; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="name" id="form_name"></input></td>
                  </tr>
                  <tr>
                    <td><p class="index_content_txt"><?PHP echo $text_email; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="email" id="form_email"></input></td>
                  </tr>
                  <tr>
                    <td><p class="index_content_txt"><?PHP echo $text_phone; ?><span style="color:#ff0000">*</span>：</p></td>
                    <td><input type="text" name="phone" id="form_phone"></input></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><p class="index_content_txt"><?PHP echo $text_enquiry; ?>：</p></td>
                    <td><textarea cols="30" rows="5" name="message" id="form_message"><?PHP echo $model.': '; ?></textarea></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><p class="index_content_txt"><a href="javascript:enquiry_form_submit()"><img src="<?PHP echo $dir_image_lang; ?>btn_contact_enquiry.png"></img></a></p></td>
                  </tr>
                  <?PHP
                  ?>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><p class="index_content_txt" style="color:#ff0000;"><?PHP echo $mail_msg; ?></p></td>
                  </tr>
                  <?
                  ?>
                </table>
            </form>
		</div>
	</div>
	<div style="clear:both"></div>
</div><!-- div content -->

<script>
function enquiry_form_submit(){
	if(''==$('#form_name').val()||''==$('#form_email').val()||''==$('#form_phone').val()){
		alert('<?PHP echo $text_error_required; ?>');
	}
	else{
		$('#enquiry_form').submit();
	}
}
$(document).ready(function(){
});
</script>

<div class="bottom-bar" style="margin-top:220px;">
<?php echo $footer; ?>
</div>

</body>
</html>
