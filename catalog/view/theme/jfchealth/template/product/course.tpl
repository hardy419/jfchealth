<?php echo $header; ?>

<div class="content course-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
		</ul>
	</div>
    <div class="course-content right-content fr">
		<div class="course-list">
		  <table width="850" border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td width="210" valign="bottom"><img src="<?PHP echo $courses[0]['image']; ?>" width="210" height="210" /></td>
				<td width="20">&nbsp;</td>
				<td width="620" align="left" valign="bottom"><table width="620" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="620" class="index_course_title" colspan="3"><?PHP echo $courses[0]['name']; ?></td>
				  </tr>
				  <tr>
					<td height="10"></td>
					<td></td>
					<td></td>
				  </tr>
				  <tr>
					<td class="index_course_content_txt" colspan="3"><?PHP echo $text_date; ?> <?PHP echo $courses[0]['course_date']; ?><br />
					  <?PHP echo $text_time; ?> <?PHP echo $courses[0]['time_period']; ?><br />
					  <?PHP echo $text_location; ?> <?PHP echo $courses[0]['location']; ?><br />
					  <?PHP echo $text_num_seats; ?> <?PHP echo $courses[0]['seats']; ?>名<br />
					  <?PHP echo $text_speaker; ?> <?PHP echo $courses[0]['speaker']; ?><br />
					  <?PHP echo $text_phone; ?> <?PHP echo $courses[0]['phone']; ?><a href="javascript:apply_course('<?PHP echo $courses[0]['course_id']; ?>');" style="float:right"><img src="<?PHP echo $dir_image_lang; ?>btn_apply_course.png" width="120" height="40" /></a></td>
				  </tr>
				</table></td>
				</tr>
			  <?PHP for ($idx=1; $idx<3; ++$idx) if(isset($courses[$idx])) { ?>
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td height="20">&nbsp;</td>
				</tr>
			  <!--tr>
				<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_course_line.png" width="833" height="1" /></td>
				</tr-->
			  <tr>
				<td align="center" valign="middle">&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				</tr>
			  <tr>
				<td width="210" valign="bottom"><img src="<?PHP echo $courses[$idx]['image']; ?>" width="210" height="210" /></td>
				<td width="20">&nbsp;</td>
				<td width="620" align="left" valign="bottom"><table width="620" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="620" class="index_course_title" colspan="3"><?PHP echo $courses[$idx]['name']; ?></td>
				  </tr>
				  <tr>
					<td height="10"></td>
					<td></td>
					<td></td>
				  </tr>
				  <tr>
					<td class="index_course_content_txt" colspan="3"><?PHP echo $text_date; ?> <?PHP echo $courses[$idx]['course_date']; ?><br />
					  <?PHP echo $text_time; ?> <?PHP echo $courses[$idx]['time_period']; ?><br />
					  <?PHP echo $text_location; ?> <?PHP echo $courses[$idx]['location']; ?><br />
					  <?PHP echo $text_num_seats; ?> <?PHP echo $courses[$idx]['seats']; ?>名<br />
					  <?PHP echo $text_speaker; ?> <?PHP echo $courses[$idx]['speaker']; ?><br />
					  <?PHP echo $text_phone; ?> <?PHP echo $courses[$idx]['phone']; ?><a href="javascript:apply_course('<?PHP echo $courses[0]['course_id']; ?>');" style="float:right"><img src="<?PHP echo $dir_image_lang; ?>btn_apply_course.png" width="120" height="40" /></a></td>
				  </tr>
				</table></td>
				</tr>
			  <?PHP } else {break;} ?>
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
			  <!--tr>
				<td colspan="3" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_course_line.png" width="833" height="1" /></td>
				</tr-->
			  <tr>
				<td height="20">&nbsp;</td>
				</tr>
			  <tr>
				<style>
.results a:link,.links a:link {
	color: #000000;
}
.results a:visited,.links a:visited {
	color: #000000;
}
.results a:hover,.links a:hover {
	color: #000000;
}
.results a:active,.links a:active {
	color: #000000;
}
				</style>
				<td height="10" colspan="3" align="right"><?php echo $pagination; ?></td>
				</tr>
		  </table>
		</div>
    </div>
	<div class="cb"></div>
</div><!-- div content -->

<div id="TB_window" style="position:absolute; top:50%; left:50%; width: 800px;height: 550px; margin-left:-400px;margin-top:-280px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course" id="TB_iframeContent" style="width:800px;height:550px;background-color:transparent"> </iframe></div>
<div id="TB_window2" style="position:absolute; top:50%; left:50%; width: 800px;height: 300px; margin-left:-400px;margin-top:-150px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course/info" id="TB_iframeContent2" style="width:800px;height:300px;background-color:transparent"> </iframe></div>
<div id="TB_mask" style="filter:alpha(opacity=30);-moz-opacity:0.5;opacity:0.5;background-color:#000000;position:absolute;left:0px;top:0px;width:100%;height:300%;z-index:2147483646;display:none" onclick="js_op_close(false)"></div>

<div class="bottom-bar">
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

$(function(){
  $('.results').css('text-align','center');
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image6').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_course_mo.png');
});

</script>
</body>
</html>
