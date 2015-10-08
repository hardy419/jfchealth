<?php echo $header; ?>

<div class="content experience-bg">
	<div class="gap"></div>
	<div class="left-nav fl">
		<div class="gap"></div>
		<ul>
		</ul>
	</div>
    <div class="experience-content right-content fr">
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
  $('#Image5').attr('src','<?PHP echo $dir_image_lang; ?>menu/btn_menu_experience_mo.png');
});
</script>

</body>
</html>
