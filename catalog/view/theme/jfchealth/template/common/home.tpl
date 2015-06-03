<?php echo $header; ?>

<div class="content">
	<div class="content-background">

<div style="position: absolute; z-index: 2147483647; width: 1000px; display: block;" id="promoPop">
	<style>
		.promo-dimming {
			background: none repeat scroll 0 0 #000000;
			height: 100%;
			left: 0;
			position: fixed;
			top: 0;
			width: 100%;
			padding: 0px;
			border: medium none;
			margin: 0px;
			visibility: visible;
			opacity: 0.7;
		}
	</style>
	<script>
		function closePromotion() {
			$("#promoPop").fadeOut(500);
		}
		$(document).ready(function(){
			setTimeout( function() {closePromotion();}, 4000 );
		});
	</script>
	<div class="promo-dimming"></div>
	<div style="position:absolute; text-align:center; width:100%;">
		<img src="<?PHP echo $dir_image; ?>banner.jpg">
	</div>
	<div style="position:absolute; text-align:right; width:100%;">
		<div style="padding:4px 24px 0 0;">
			<img onclick="closePromotion();" class="imgButton" src="<?PHP echo $dir_image; ?>btn_close (2).png">
		</div>
	</div>
</div>

		<div id="news-section">
			<img src="<?PHP echo $dir_image_lang; ?>img_index_newstitle.png" width="230" height="25" border="0" usemap="#Map" />
            <div style="overflow:hidden;width:208px;height:176px;position:relative;left:10px"><div style="filter:alpha(opacity=30);-moz-opacity:0.5;opacity:0.5;background-color:#fff;width:208px;height:70px;position:absolute;top:110px;z-index:1"></div><ul class="slide-left" style="padding:0;position:relative" uw="208" uh="176"><?PHP foreach ($news_info as $news) { ?><li style="float:left"><img src="<?PHP echo DIR_IMAGE.$news['image']; ?>" style="width:208px;height:176px;"></img><p class="index_news_title" style="width:188px;position:relative;top:-90px;left:10px;z-index:2"><?PHP echo $news['title']; ?></p></li><?PHP } ?></ul></div>
		</div>
		<div id="product-image">
			<table>
				<tr>
					<td><a style="position:relative;left:40px;z-index:2" href="javascript:slide($('#product-img-u'),0);slide($('#product-text-u'),0)"><img src="<?PHP echo $dir_image; ?>btn_index_Lbutton.png"></img></a></td>
					<td><a style="position:relative;left:276px;z-index:2" href="javascript:slide($('#product-img-u'),1);slide($('#product-text-u'),1)"><img src="<?PHP echo $dir_image; ?>btn_index_Rbutton.png"></img></a></td>
					<td><div style="width:330px;height:330px;border-radius:170px;left:-41px;top:7px;position:relative;overflow:hidden"><div style="left:10px;top:-25px;position:relative;"><ul class="slide-right" id="product-img-u" style="left:0;position: relative;padding:0" uw="310"><?PHP foreach($product_urls as $key=>$url) { ?><li style="float:left"><a id="product-a" href="<?PHP echo "{$url}&path={$product_cids[$key]}&product_id={$product_ids[$key]}"; ?>"><img id="product-img" src="<?PHP echo $product_images[$key]; ?>"></img></a></li><?PHP } ?></ul></div></div></td>
				</tr>
			</table>
		</div>
		<div id="product-section" style="overflow:hidden">
          <ul class="slide-right" id="product-text-u" uw="230" style="padding:0;position:relative">
            <?PHP foreach($product_names as $key=>$name) { ?><li style="float:left;width:230px;height:200px">
				<p height="60" class="product-name index_discription_title"><?PHP echo $name; ?></p>
			  
				<div height="100" class="product-description index_content_txt"><?PHP echo $product_description[$key]; ?></div>
            </li><?PHP } ?>
          </ul>
		</div>
		<div style="clear:both;"></div>
		<div id="course-section">
			<p class="index_news_title" style="font-size:16px;line-height:10px"><?PHP echo $course_info['name']; ?></p>
			<p height="100" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;" class="index_content_txt">日期：<?PHP echo $course_info['course_date']; ?><br />
			  時間：<?PHP echo $course_info['time_period']; ?><br />
			  地點：<?PHP echo $course_info['location']; ?><br />
			  主講：<?PHP echo $course_info['speaker']; ?></p>
			<p align="center" valign="top"><a href="javascript:apply_course('<?PHP echo $course_info['course_id']; ?>');"><img src="<?PHP echo $dir_image_lang; ?>btn_apply_course.png" width="86" height="26" border="0" /></a></p>
			<p align="center" valign="top"><a href="?route=product/course" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></p>
		</div>
		<div id="magazine-section">
			<table width="192" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td width="40" align="left" valign="middle" class="index_discription_title"><a href="javascript:switch_magazine(0)"><img src="<?PHP echo $dir_image; ?>btn_magz_Lbutton.png" width="29" height="58" /></a></td>
				<td width="112" align="center" valign="middle" class="index_discription_title"><a id="magz-a" href="<?PHP echo $magazine_info[0]['filename']; ?>" target="_blank"><img id="magz-img" src="<?PHP echo $magazine_info[0]['image']; ?>" width="112" height="152" /></a></td>
				<td width="40" align="right" valign="middle" class="index_discription_title"><a href="javascript:switch_magazine(1)"><img src="<?PHP echo $dir_image; ?>btn_magz_Rbutton.png" width="29" height="58" /></a></td>
			  </tr>
			  <tr>
				<td height="40" colspan="3" align="center" valign="middle" class="index_content_txt" id="magz-title"><?PHP echo $magazine_info[0]['title']; ?></td>
			  </tr>
			  <tr>
				<td height="40" colspan="3" align="center" class="index_content_txt"><a href="?route=product/magazine" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></td>
			  </tr>
			</table>
		</div>
		<div style="clear:both;"></div>
		<div id="article-section">
			<p class="index_news_title" style="font-size:16px;line-height:10px"><?PHP echo $user_article_info['title']; ?></p>
			<p class="index_content_txt" id="user-article-infod">......</p>
			<p class="index_read_txt"><a href="?route=product/article/detail&nid=<?PHP echo $user_article_info['news_id']; ?>" target="_parent"><font color="#4e4eff">&lt;&lt;閱讀全文&gt;&gt;</font></a></p>
			<br/><br/>
			<p align="center" class="index_read_txt"><a href="?route=product/article" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></p>
		</div>
		<div id="video-section">
			<table width="353" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td><img src="<?PHP echo $dir_image_lang; ?>img_index_videotitle.png" width="353" height="25" border="0" usemap="#Map2" /></td>
					</tr>
				  <tr>
					<td height="20">&nbsp;</td>
					</tr>
				  <tr>
					<td height="230"><iframe width="353" height="230" src="<?PHP echo $video_info['info']; ?>" frameborder="0" allowfullscreen></iframe></td>
					</tr>
			</table>
		</div>
	</div>
</div>

<div id="TB_window" style="position:absolute; top:50%; left:50%; width: 560px;height: 315px; margin-left:-280px;margin-top:-160px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course" id="TB_iframeContent" style="width:560px;height:315px;background-color:transparent"> </iframe></div>
<div id="TB_window2" style="position:absolute; top:50%; left:50%; width: 560px;height: 222px; margin-left:-280px;margin-top:-111px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course/info" id="TB_iframeContent2" style="width:560px;height:222px;background-color:transparent"> </iframe></div>
<div id="TB_mask" style="filter:alpha(opacity=30);-moz-opacity:0.5;opacity:0.5;background-color:#000000;position:absolute;left:0px;top:0px;width:100%;height:300%;z-index:2147483646;display:none" onclick="js_op_close(false)"></div>

<div class="bottom-bar" style="margin-top:10px;">
<?php echo $footer; ?>
</div>

<map name="Map" id="Map"><area shape="rect" coords="149,5,222,18" href="?route=product/news" target="_parent" />
<map name="Map2" id="Map2"><area shape="rect" coords="268,6,344,23" href="?route=product/video" target="_parent" />

<script>
$(document).ready(function (){
  $(".slide-right").each(function(){var linum=$(this).find("li").length;var width=parseInt($(this).attr("uw"));var w=width*linum;$(this).css("width",w+"px").css("left",(width-w)+"px");});$(".slide-left").each(function(){var linum=$(this).find("li").length;var width=parseInt($(this).attr("uw"));var w=width*linum;$(this).css("width",w+"px").css("left","0px");});setTimeout(autoplay,5E3);
  $(".product-description").each(function(){
    var txt=$(this).text();
    $(this).html(txt.substr(0,90)+"......");
  });
});
function slide(obj,dir){
  var linum=obj.find("li").length;
  var width=parseInt(obj.attr("uw"));
  var w=width*linum;
  var ml=parseInt(obj.css("left"));
  ml-=ml%width;
  if(0===dir){
    if(0===ml){
      obj.find("li").last().insertBefore(obj.find("li").first());
      obj.css("left",(ml-width)+"px");
      obj.animate({left:ml+"px"},"slow");
    }
    else{
      obj.animate({left:(ml+width)+"px"},"slow");
    }
  }
  else{
    if(width-w==ml){
      obj.find("li").first().insertAfter(obj.find("li").last());
      obj.css("left",(ml+width)+"px");
      obj.animate({left:ml+"px"},"slow");
    }
    else{
      obj.animate({left:(ml-width)+"px"},"slow");
    }
  }
}
function autoplay(){
  $(".slide-right").each(function(){slide($(this),0)});$(".slide-left").each(function(){slide($(this),1)});
  setTimeout(autoplay,5E3);
}
</script>

<!-- Magazine list -->
<script>
var magz_i=0;
var magz_a_list=[<?PHP foreach($magazine_info as $key=>$magz) { if($key>0) {echo ', ';}; echo "'{$magz['filename']}'"; } ?>];
var magz_img_list=[<?PHP foreach($magazine_info as $key=>$magz) { if($key>0) {echo ', ';}; echo "'{$magz['image']}'"; } ?>];
var magz_title_list=[<?PHP foreach($magazine_info as $key=>$magz) { if($key>0) {echo ', ';}; echo "'{$magz['title']}'"; } ?>];
$('#magz-a').attr('href',magz_a_list[magz_i]);
$('#magz-img').attr('src',magz_img_list[magz_i]);
$('#magz-title').html(trans_html(magz_title_list[magz_i]));
function switch_magazine(dir){
	if (0 == dir) {
		if (magz_i == 0){
			magz_i = magz_a_list.length-1;
		}
		else {
			magz_i--;
		}
	}
	else {
		if (magz_i == magz_a_list.length-1){
			magz_i = 0;
		}
		else {
			magz_i++;
		}
	}
	$('#magz-a').attr('href',magz_a_list[magz_i]);
	$('#magz-img').attr('src',magz_img_list[magz_i]);
	$('#magz-title').html(trans_html(magz_title_list[magz_i]));
}
function trans_html($str){
  $temp=$str.replace(/^\s*/,'');
  $temp=$temp.replace(/\s+/,'<br/>');
  return $temp;
}
</script>

<!-- User article text pre-processing -->
<script>
(function(){
  var text="<?PHP echo $user_article_info['infod']; ?>";
  $('#user-article-infod').html(text.substr(0,90)+"......");
})();
</script>

<!-- Popup window for applying course  -->
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
