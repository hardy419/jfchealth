<?php echo $header; ?>

<div class="content">
	<div class="content-background">
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
