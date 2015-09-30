<?php echo $header; ?>

<div class="content news-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
		</ul>
	</div>
	<div class="right-content fr">
<?PHP for ($idx=0; $idx<3; ++$idx) if(isset($news[$idx])) { ?>
	  <div class="news-section-div">
		<div class="fl"><img src="<?PHP echo $news[$idx]['image']; ?>" width="210" height="210" /></div>
		<div class="fr">
		  <h3><?PHP echo $news[$idx]['title']; ?></h3>
		  <p><?PHP echo $news[$idx]['intro']; ?>......<a class="readmore" href="?route=product/news/detail&nid=<?PHP echo $news[$idx]['news_id']; ?>">閱讀全文</a></p>
		</div>
		<div class="cb"></div>
	  </div>
<?PHP } ?>
	  <?php echo $pagination; ?>
	</div>
	<div class="cb"></div>
</div><!-- div content -->

<div class="bottom-bar">
<?php echo $footer; ?>
</div>

<script>
$(function(){
  $('.results').css('text-align','center');
  // Menu highlight
  $('#Image1').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home.png');
  $('#Image3').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_news_mo.png');
});
</script>

</body>
</html>
