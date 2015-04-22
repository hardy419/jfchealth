<div class="cont-box overhide pad-B20">
  <div class="cont overhide">
    <ul class="list">
      <?php foreach ($categories as $category) {  ?>
      <li id='li' class="l">
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<script>
	var current_url = window.location.href;
	$("#li a").each(function(){
		if($(this).attr('href')==current_url){
			$(this).addClass("on");
		}else{
			$(this).removeClass("on");
		}
	});
</script>
