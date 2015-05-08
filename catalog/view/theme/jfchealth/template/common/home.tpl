<?php echo $header; ?>

<style>
#news-section-img
{
    background-image: url("<?PHP echo $dir_image; ?>img_index_news_photo01.png");
    width:208px;
    height:176px;
    margin-left:10px;
}
</style>
<div class="content">
	<div class="content-background">
		<div id="news-section">
			<img src="<?PHP echo $dir_image_lang; ?>img_index_newstitle.png" width="230" height="25" border="0" usemap="#Map" />
			<div id="news-section-img">
				<div class="news-section-intro">
					<p class="index_news_title">愛的事業‧再啟航”駿豐頻譜第13屆健康大使表彰大會</p>
				</div>
			</div>
		</div>
		<div id="product-image">
			<table>
				<tr>
					<td><a style="position:relative;left:40px;" href="javascript:switch_product(0)"><img src="<?PHP echo $dir_image; ?>btn_index_Lbutton.png"></img></a></td>
					<td><a id="product-a" href="?route=product/product&path=99&product_id=185"><img id="product-img" src="<?PHP echo $dir_image; ?>product_home.png"></img></a></td>
					<td><a style="position:relative;left:-40px;" href="javascript:switch_product(1)"><img src="<?PHP echo $dir_image; ?>btn_index_Rbutton.png"></img></a></td>
				</tr>
			</table>
		</div>
		<div id="product-section">
				<p height="60" id="product-name" class="index_discription_title">半截式<br />
				  駿豐頻譜水保健儀</p>
			  
				<p height="100" id="product-description" class="index_content_txt">改善微循環，有效調節腎臟泌尿系統，預防心腦血管病。<br />
				  增強腸胃功能，促進食物消化與營養吸收，平衡新陳代謝。<br />
				  提高人體綜合免疫力，有保健作用。</p>
		</div>
		<div style="clear:both;"></div>
		<div id="course-section">
			<p class="index_news_title"><?PHP echo $course_info['name']; ?></p>
			<p height="100" style="text-overflow:ellipsis;white-space:nowrap;overflow:hidden;" class="index_content_txt">日期：<?PHP echo $course_info['course_date']; ?><br />
			  時間：<?PHP echo $course_info['time_period']; ?><br />
			  地點：<?PHP echo $course_info['location']; ?><br />
			  主講：<?PHP echo $course_info['speaker']; ?></p>
			<br/>
			<p align="center" valign="top"><a href="?route=product/course" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></p>
		</div>
		<div id="magazine-section">
			<table width="112" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td width="112" class="index_discription_title"><a href="<?PHP echo $magazine_info['filename']; ?>" target="_blank"><img src="<?PHP echo $magazine_info['image']; ?>" width="112" height="152" /></a></td>
			  </tr>
			  <tr>
				<td height="40" align="center" valign="middle" class="index_content_txt"><?PHP echo $magazine_info['title']; ?></td>
			  </tr>
			  <tr>
				<td height="40" align="center" class="index_content_txt"><a href="?route=product/magazine" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></td>
			  </tr>
			</table>
		</div>
		<div style="clear:both;"></div>
		<div id="article-section">
			<p class="index_news_title"><?PHP echo $user_article_info_info['title']; ?></p>
			<p class="index_content_txt"><?PHP echo $user_article_info['infod']; ?>......</p>
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

<div class="bottom-bar" style="margin-top:10px;">
<?php echo $footer; ?>
</div>

<map name="Map" id="Map"><area shape="rect" coords="149,5,222,18" href="?route=product/news" target="_parent" />
<map name="Map2" id="Map2"><area shape="rect" coords="268,6,344,23" href="?route=product/video" target="_parent" />

<script>
(function init(){
	list_i=0;
})();
function switch_product(dir){
	var a_list=[<?PHP foreach($product_urls as $key=>$u) { if($key>0) {echo ', ';}; echo "'{$u}&path={$product_cids[$key]}&product_id={$product_ids[$key]}'"; } ?>];
	var img_list=[<?PHP foreach($product_images as $key=>$img) { if($key>0) {echo ', ';}; echo "'{$img}'"; } ?>];
	var name_list=[<?PHP foreach($product_names as $key=>$name) { if($key>0) {echo ', ';}; echo "'{$name}'"; } ?>];
	//var desc_list=[<?PHP foreach($product_description as $key=>$desc) { if($key>0) {echo ', ';}; echo "'{$desc}'"; } ?>];
	if (0 == dir) {
		if (list_i == 0){
			list_i = a_list.length-1;
		}
		else {
			list_i--;
		}
	}
	else {
		if (list_i == a_list.length-1){
			list_i = 0;
		}
		else {
			list_i++;
		}
	}
	$('#product-a').attr('href',a_list[list_i]);
	$('#product-img').attr('src',img_list[list_i]);
	$('#product-name').html(name_list[list_i]);
	//$('#product-description').html('');
}
</script>
</body>
</html>
