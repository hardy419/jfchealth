<?php echo $header; ?>

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
					<td><a href="javascript:switch_product(0)"><img src="<?PHP echo $dir_image; ?>btn_index_Lbutton.png"></img></a></td>
					<td><a id="product-a" href="?route=product/product&path=99&product_id=185"><img id="product-img" src="<?PHP echo $dir_image; ?>product_home.png"></img></a></td>
					<td><a href="javascript:switch_product(1)"><img src="<?PHP echo $dir_image; ?>btn_index_Rbutton.png"></img></a></td>
				</tr>
			</table>
		</div>
		<div id="product-section">
				<p height="60" class="index_discription_title">半截式<br />
				  駿豐頻譜水保健儀</p>
			  
				<p height="100" class="index_content_txt">改善微循環，有效調節腎臟泌尿系統，預防心腦血管病。<br />
				  增強腸胃功能，促進食物消化與營養吸收，平衡新陳代謝。<br />
				  提高人體綜合免疫力，有保健作用。</p>
		</div>
		<div style="clear:both;"></div>
		<div id="course-section">
			<p class="index_news_title">頻譜與您</p>
			<p height="100" class="index_content_txt">日期：每個星期六<br />
			  時間： 14:00 - 15:00<br />
			  地點：香港九龍尖沙咀梳士巴利道3號星光行7樓758-765室<br />
			  主講：團隊領袖</p>
			<br/>
			<p align="center" valign="top"><a href="?route=product/course" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></p>
		</div>
		<div id="magazine-section">
			<table width="112" border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td width="112" class="index_discription_title"><a href="<?PHP echo $dir_pdf; ?>book2.pdf" target="_blank"><img src="<?PHP echo $dir_image; ?>img_magazine_01.png" width="112" height="152" /></a></td>
			  </tr>
			  <tr>
				<td height="40" align="center" valign="middle" class="index_content_txt">頻譜生活<br />
				  Vol.02</td>
			  </tr>
			  <tr>
				<td height="40" align="center" class="index_content_txt"><a href="?route=product/magazine" target="_parent"><img src="<?PHP echo $dir_image; ?>button.png" width="85" height="25" border="0" /></a></td>
			  </tr>
			</table>
		</div>
		<div style="clear:both;"></div>
		<div id="article-section">
			<p class="index_news_title">改善不完美的生命殘缺</p>
			<p class="index_content_txt">八年前的我是一個大胖墩，體重高達160 多斤。我是一個典型的“三高”症患者，腰間盤突出讓我坐立難安，加上膝關節疼痛，我只得手扶拐杖，彎腰行走。......</p>
			<p class="index_read_txt"><a href="?route=product/article/detail&nid=4" target="_parent"><font color="#4e4eff">&lt;&lt;閱讀全文&gt;&gt;</font></a></p>
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
					<td height="230"><iframe width="353" height="230" src="https://www.youtube.com/embed/Upg1BZNLmnY" frameborder="0" allowfullscreen></iframe></td>
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
}
</script>
</body>
</html>
