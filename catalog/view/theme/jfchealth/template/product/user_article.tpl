<?php echo $header; ?>

<div class="content share-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
			<li><img src="<?PHP echo $dir_image_lang; ?>btn_article_user_mo.png" border="0" id="Image111" /></li>
			<li><a href="?route=product/expert_article" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_expert.png" name="Image10" border="0" id="Image10" onmouseover="MM_swapImage('Image10','','<?PHP echo $dir_image_lang; ?>btn_article_expert_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
			<li><a href="?route=product/video" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>btn_article_video.png" name="Image1211" border="0" id="Image1211" onmouseover="MM_swapImage('Image1211','','<?PHP echo $dir_image_lang; ?>btn_article_video_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></li>
		</ul>
	</div>
	<div class="right-content fr">
<?PHP $idx=0; while(isset($news[$idx])) { ?>
	  <div class="news-section-div">
		<div class="fl"><img src="<?PHP echo $news[$idx]['image']; ?>" width="210" height="210" /></div>
		<div class="fr">
		  <h3><?PHP echo $news[$idx]['title']; ?></h3>
		  <p><?PHP echo $news[$idx]['infod']; ?>......<a class="readmore" href="?route=product/article/detail&nid=<?PHP echo $news[$idx]['news_id']; ?>">閱讀全文</a></p>
		</div>
		<div class="cb"></div>
	  </div>
<?PHP $idx++; } ?>
	  <style>
      .links a:visited,.links a:link {
        color:#000000 !important;
      }
      </style>
	  <?php echo $pagination; ?>
	</div>
	<div class="cb"></div>
</div><!-- div content -->

<div class="bottom-bar">
<?php echo $footer; ?>
</div>

<script>
$(function(){
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image7').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_share_mo.png');
  // Sub menu
  show_submenu('img_share_sub.png','#share_map');
  // Pagination
  $('.links a').attr('href',$('.links a').attr('href').replace('user_article','article'));
});
</script>

</body>
</html>
