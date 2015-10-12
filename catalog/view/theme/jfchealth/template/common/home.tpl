<?php echo $header; ?>

<div class="content">
  <div class="home-banner" style="overflow:hidden">
    <ul class="slide-right" id="home-banner-u" uw="1280" delay="0" style="padding:0;position:relative">
      <?PHP foreach($main_settings[0]['images'] as $key=>$image) { ?>
      <li style="float:left;width:1280px;height:530px">
		<a href="<?PHP echo $main_settings[0]['links'][$key]; ?>"><img src="<?PHP echo DIR_IMAGE . $image; ?>" /></a>
      </li>
      <?PHP } ?>
    </ul>
    <div class="home-banner-icons pa">
      <a href="javascript:(function(){slide($('#home-banner-u'),1);})();"><img id="home-larrow-img" src="<?PHP echo $dir_image; ?>btn_index_Lbutton.png" /></a>
      <a href="javascript:(function(){slide($('#home-banner-u'),0);})();"><img id="home-rarrow-img" src="<?PHP echo $dir_image; ?>btn_index_Rbutton.png" /></a>
    </div>
  </div>

  <div class="home-4categories">
    <ul>
      <li class="fl">
        <div style="overflow:hidden;width:295px;height:295px">
          <ul class="slide-right" uw="295" delay="1500" style="padding:0;position:relative">
            <?PHP foreach($main_settings[1]['images'] as $key=>$image) { ?>
            <li style="float:left;width:295px;height:295px"><a href="<?PHP echo $main_settings[1]['links'][$key]; ?>"><img src="<?PHP echo DIR_IMAGE . $image; ?>" /></a></li>
            <?PHP } ?>
          </ul>
        </div>
      </li>
      <li class="fl">
        <div style="overflow:hidden;width:295px;height:295px">
          <ul class="slide-right" uw="295" delay="2500" style="padding:0;position:relative">
            <?PHP foreach($main_settings[2]['images'] as $key=>$image) { ?>
            <li style="float:left;width:295px;height:295px"><a href="<?PHP echo $main_settings[2]['links'][$key]; ?>"><img src="<?PHP echo DIR_IMAGE . $image; ?>" /></a></li>
            <?PHP } ?>
          </ul>
        </div>
      </li>
      <li class="fl">
        <div style="overflow:hidden;width:295px;height:295px">
          <ul class="slide-right" uw="295" delay="700" style="padding:0;position:relative">
            <?PHP foreach($main_settings[3]['images'] as $key=>$image) { ?>
            <li style="float:left;width:295px;height:295px"><a href="<?PHP echo $main_settings[3]['links'][$key]; ?>"><img src="<?PHP echo DIR_IMAGE . $image; ?>" /></a></li>
            <?PHP } ?>
          </ul>
        </div>
      </li>
      <li class="fl">
        <div style="overflow:hidden;width:295px;height:295px">
          <ul class="slide-right" uw="295" delay="4000" style="padding:0;position:relative">
            <?PHP foreach($main_settings[4]['images'] as $key=>$image) { ?>
            <li style="float:left;width:295px;height:295px"><a href="<?PHP echo $main_settings[4]['links'][$key]; ?>"><img src="<?PHP echo DIR_IMAGE . $image; ?>" /></a></li>
            <?PHP } ?>
          </ul>
        </div>
      </li>
    </ul>
    <div class="cb"></div>
  </div>

  <div class="home-about">
    <img src="<?PHP echo $dir_image_lang; ?>home-about.png" />
    <div class="home-about-text pa">
      <p>駿豐頻譜公司創業於1989年，是一家專門致力於家庭保健事業的高新技術企業。公司以高科技為先導，以雄厚的科研力量為基礎，以國內資深科學家、醫學專家、國家權威研究及檢測機構為依託，以擁有自主知識產權的發明專利和非藥物健康產品為核心，以嚴實的經營作風與科學規範的管理而不斷發展壯大。</p>
    </div>
  </div>

  <div class="home-news">
    <div class="home-news-text pa">
      <div class="home-news-div">
      <?PHP foreach ($news_info as $item) { ?>
        <div class="news-section-div">
          <div class="fl"><a href="?route=product/news/detail&nid=<?PHP echo $item['news_id']; ?>"><img src="<?PHP echo DIR_IMAGE . $item['image']; ?>" /></a></div>
          <div class="fr">
            <h3><?PHP echo $item['title']; ?></h3>
            <p><?PHP echo $item['description']; ?>......</p>
          </div>
          <div class="cb"></div>
        </div>
      <?PHP } ?>
      </div>
    </div>
    <img src="<?PHP echo $dir_image_lang; ?>home-news.png" />
  </div>
</div>

<div id="TB_window" style="position:absolute; top:50%; left:50%; width: 560px;height: 315px; margin-left:-280px;margin-top:-160px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course" id="TB_iframeContent" style="width:560px;height:315px;background-color:transparent"> </iframe></div>
<div id="TB_window2" style="position:absolute; top:50%; left:50%; width: 560px;height: 222px; margin-left:-280px;margin-top:-111px; display: none;z-index:2147483647"><iframe frameborder="0" hspace="0" scrolling="no" allowtransparency="yes" src="?route=product/apply_course/info" id="TB_iframeContent2" style="width:560px;height:222px;background-color:transparent"> </iframe></div>
<div id="TB_mask" style="filter:alpha(opacity=30);-moz-opacity:0.5;opacity:0.5;background-color:#000000;position:absolute;left:0px;top:0px;width:100%;height:300%;z-index:2147483646;display:none" onclick="js_op_close(false)"></div>

<div class="bottom-bar">
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

  // Show sub menu
  //$(".sub-menu").css('display','block');
  //$(".content").css('margin-top','0px');
});
function slide(obj,dir){
  var linum=obj.find("li").length;
  if(linum<=1) return;
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
robj=[];
lobj=[];
function autoplay(){
  $(".slide-right").each(function(idx){robj[idx]=$(this);setTimeout("slide(robj["+idx+"],0)",$(this).attr('delay'))});$(".slide-left").each(function(idx){lobj[idx]=$(this);setTimeout("slide(lobj["+idx+"],1)",$(this).attr('delay'))});
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
