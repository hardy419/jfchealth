<?php echo $header; ?>

<div class="content">
    <div class="course-content">
		<div class="content-title">
			<img src="<?PHP echo $dir_image_lang; ?>img_course_title.png" width="920" height="62" />
		</div>
		<div class="course-list">
		  <table width="920" border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td height="20">&nbsp;</td>
				<td>&nbsp;</td>
				<td align="left" valign="top">&nbsp;</td>
			  </tr>
			  <tr>
				<td width="210"><img src="<?PHP echo $courses[0]['image']; ?>" width="210" height="210" /></td>
				<td width="20">&nbsp;</td>
				<td width="690" align="left" valign="top"><table width="690" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="560" class="index_course_title"><?PHP echo $courses[0]['name']; ?>&nbsp;&nbsp;&nbsp;<?PHP echo $courses[0]['date']; ?></td>
					<td width="20">&nbsp;</td>
					<td width="110" align="right" valign="middle"><a href="javascript:apply_course('<?PHP echo $courses[0]['course_id']; ?>');"><img src="<?PHP echo $dir_image_lang; ?>btn_apply_course.png" width="86" height="26" /></a></td>
				  </tr>
				  <tr>
					<td height="10">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="index_course_content_txt"><?PHP echo $text_date; ?> <?PHP echo $courses[0]['course_date']; ?><br />
					  <?PHP echo $text_time; ?> <?PHP echo $courses[0]['time_period']; ?><br />
					  <?PHP echo $text_location; ?> <?PHP echo $courses[0]['location']; ?><br />
					  <?PHP echo $text_num_seats; ?> <?PHP echo $courses[0]['seats']; ?>名<br />
					  <?PHP echo $text_speaker; ?> <?PHP echo $courses[0]['speaker']; ?><br />
					  <?PHP echo $text_phone; ?> <?PHP echo $courses[0]['phone']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				</table></td>
				</tr>
			  <?PHP for ($idx=1; $idx<3; ++$idx) if(isset($courses[$idx])) { ?>
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td height="20">&nbsp;</td>
				</tr>
			  <tr>
				<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_course_line.png" width="903" height="1" /></td>
				</tr>
			  <tr>
				<td align="center" valign="middle">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
			  <tr>
				<td width="210"><img src="<?PHP echo $courses[$idx]['image']; ?>" width="210" height="210" /></td>
				<td width="20">&nbsp;</td>
				<td width="690" align="left" valign="top"><table width="690" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="560" class="index_course_title"><?PHP echo $courses[$idx]['name']; ?>&nbsp;&nbsp;&nbsp;<?PHP echo $courses[$idx]['date']; ?></td>
					<td width="20">&nbsp;</td>
					<td width="110" align="right" valign="middle"><a href="javascript:apply_course('<?PHP echo $courses[$idx]['course_id']; ?>');"><img src="<?PHP echo $dir_image_lang; ?>btn_apply_course.png" width="86" height="26" /></a></td>
				  </tr>
				  <tr>
					<td height="10">&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="index_course_content_txt"><?PHP echo $text_date; ?> <?PHP echo $courses[$idx]['course_date']; ?><br />
					  <?PHP echo $text_time; ?> <?PHP echo $courses[$idx]['time_period']; ?><br />
					  <?PHP echo $text_location; ?> <?PHP echo $courses[$idx]['location']; ?><br />
					  <?PHP echo $text_num_seats; ?> <?PHP echo $courses[$idx]['seats']; ?>名<br />
					  <?PHP echo $text_speaker; ?> <?PHP echo $courses[$idx]['speaker']; ?><br />
					  <?PHP echo $text_phone; ?> <?PHP echo $courses[$idx]['phone']; ?></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				</table></td>
				</tr>
			  <?PHP } else {break;} ?>
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
			  <tr>
				<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_course_line.png" width="903" height="1" /></td>
				</tr>
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
			  <tr>
				<style>
.results a:link {
	color: #000000;
}
.results a:visited {
	color: #000000;
}
.results a:hover {
	color: #000000;
}
.results a:active {
	color: #000000;
}
				</style>
				<td height="10" colspan="3" align="right"><?php echo $pagination; ?></td>
				</tr>
		  </table>
		</div>
    </div>
	<div style="clear:both"></div>
</div><!-- div content -->

<div id="TB_window" style="position:absolute; top:50%; left:50%; width: 560px;height: 315px; margin-left:-280px;margin-top:-160px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course" id="TB_iframeContent" style="width:560px;height:315px;background-color:transparent"> </iframe></div>
<div id="TB_window2" style="position:absolute; top:50%; left:50%; width: 560px;height: 222px; margin-left:-280px;margin-top:-111px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course/info" id="TB_iframeContent2" style="width:560px;height:222px;background-color:transparent"> </iframe></div>
<div id="TB_mask" style="filter:alpha(opacity=30);-moz-opacity:0.5;opacity:0.5;background-color:#000000;position:absolute;left:0px;top:0px;width:100%;height:300%;z-index:2147483646;display:none" onclick="js_op_close(false)"></div>

<div class="bottom-bar" style="margin-top:90px;position:absolute;top:1100px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

<script>
function js_op_close(reload){
	$("#TB_mask").css("display",'none');
	$("#TB_window").css("display",'none');
	$("#TB_window2").css("display",'none');
	if(reload){
		location.reload();
	}
}
function js_iframe_info(url){
	tb_showIframe();
	$("#TB_iframeContent2").attr('src',url);
	$("#TB_window2").css("display",'block');
}
function apply_course(cid){
	tb_showIframe();
	$("#TB_iframeContent").attr('src','?route=product/apply_course&cid='+cid);
	$("#TB_window").css("display",'block');
}

function tb_showIframe()
{
	$("#TB_mask").css("display",'block');
}

function js_op(_url)
{
	$.ajax({
		type:'POST',
		url:_url,
		dataType:'json',
		cache:false,
		error:function(){
			alert('出错了！');
			return false;
		},
		success:function(json){
			if('1' == json.data)
			{
				alert('操作成功！');
				location.reload();
			}
			else
			{
				alert('操作失败！');
			}
		}
	});
}
</script>
</body>
</html>
