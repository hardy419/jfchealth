<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/dared/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/dared/stylesheet/ie6.css" />
</script>
<![endif]-->
</head>
<body onload="MM_preloadImages('<?PHP echo $dir_image; ?>btn_menu_aboutus_mo.png','<?PHP echo $dir_image; ?>btn_menu_course_mo.png','<?PHP echo $dir_image; ?>btn_menu_product_mo.png','<?PHP echo $dir_image; ?>btn_menu_sharing_mo.png','<?PHP echo $dir_image; ?>btn_menu_magazine_mo.png','<?PHP echo $dir_image; ?>btn_menu_contactus_mo.png','<?PHP echo $dir_image; ?>btn_menu_login_mo.png','<?PHP echo $dir_image; ?>btn_menu_register_mo.png','<?PHP echo $dir_image; ?>btn_menu_news_mo.png')">
<div class="top-bar" style="z-index:2147483647;">
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="20">&nbsp;</td>
    <td height="20" colspan="2">&nbsp;</td>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2"><table width="920" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="329" valign="top"><table width="329" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="92"><a href="https://www.facebook.com/jfchk" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_facebook.png" width="92" height="26" border="0" /></a></td>
            <td width="15">&nbsp;</td>
            <td width="82"><a href="https://www.youtube.com/channel/UCkQ9aBI9K8jA_1Ml-96Gm6g" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_youtube.png" width="82" height="26" border="0" /></a></td>
            <td width="15">&nbsp;</td>
            <td><img src="<?PHP echo $dir_image; ?>btn_instagram.png" width="93" height="26" /></td>
          </tr>
        </table></td>
        <td width="262" align="center"><a href="index.php" target="_parent"><img src="<?PHP echo $dir_image; ?>img_logo.png" width="260" height="63" /></a></td>
        <td width="329">&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="36" colspan="3" background="<?PHP echo $dir_image; ?>img_menu_bg.png"><table width="920" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="30">&nbsp;</td>
            <td width="60" valign="middle"><a href="index.php?route=product/news" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_news.png" name="Image1" width="60" height="15" border="0" id="Image1" onmouseover="MM_swapImage('Image1','','<?PHP echo $dir_image; ?>btn_menu_news_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" height="36" valign="middle">&nbsp;</td>
            <td width="58" valign="middle"><a href="index.php?route=information/aboutus" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_aboutus.png" name="Image2" width="58" height="15" border="0" id="Image2" onmouseover="MM_swapImage('Image2','','<?PHP echo $dir_image; ?>btn_menu_aboutus_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" valign="middle">&nbsp;</td>
            <td width="30" valign="middle"><a href="index.php?route=product/course" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_course.png" width="30" height="15" border="0" id="Image3" onmouseover="MM_swapImage('Image3','','<?PHP echo $dir_image; ?>btn_menu_course_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" valign="middle">&nbsp;</td>
            <td width="60" valign="middle"><a href="index.php?route=product/product" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_product.png" width="60" height="15" border="0" id="Image4" onmouseover="MM_swapImage('Image4','','<?PHP echo $dir_image; ?>btn_menu_product_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" valign="middle">&nbsp;</td>
            <td width="60" valign="middle"><a href="index.php?route=product/article" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_sharing.png" name="Image5" width="60" height="15" border="0" id="Image5" onmouseover="MM_swapImage('Image5','','<?PHP echo $dir_image; ?>btn_menu_sharing_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" valign="middle">&nbsp;</td>
            <td width="60" valign="middle"><a href="index.php?route=product/magazine" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_magazine.png" width="60" height="15" border="0" id="Image6" onmouseover="MM_swapImage('Image6','','<?PHP echo $dir_image; ?>btn_menu_magazine_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="48" valign="middle">&nbsp;</td>
            <td width="59" valign="middle"><a href="index.php?route=information/contactus" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_menu_contactus.png" width="59" height="15" border="0" id="Image7" onmouseover="MM_swapImage('Image7','','<?PHP echo $dir_image; ?>btn_menu_contactus_mo.png',1)" onmouseout="MM_swapImgRestore()" /></a></td>
            <td width="50" valign="middle">&nbsp;</td>
            <td width="60" valign="middle"><img src="<?PHP echo $dir_image; ?>btn_menu_login.png" width="60" height="15" id="Image8" onmouseover="MM_swapImage('Image8','','<?PHP echo $dir_image; ?>btn_menu_login_mo.png',1)" onmouseout="MM_swapImgRestore()" /></td>
            <td width="20" align="center" valign="middle"><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="16" /></td>
            <td width="85" valign="middle"><img src="<?PHP echo $dir_image; ?>btn_menu_register.png" width="60" height="15" id="Image9" onmouseover="MM_swapImage('Image9','','<?PHP echo $dir_image; ?>btn_menu_register_mo.png',1)" onmouseout="MM_swapImgRestore()" /></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td height="20" colspan="3">&nbsp;</td>
        </tr>
<!--<body>
<div class="warpper">
<div id="header" class=" pad-B10">
	<div class="head-top">
		<?php if ($logo) { ?>
		<div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
		<?php } ?>
	</div>
	<div class="head-menu">
		<ul class="m">
			<li class="l"><a class="m-a" href="<?php echo $aboutus; ?>"><span class="m_about m_about<?php echo $_GET['route']=='information/about'?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $category; ?>"><span class="m_product m_product<?php echo ($_GET['route']=='product/category' || $_GET['route']=='product/product')?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $news; ?>"><span class="m_news m_news<?php echo $_GET['route']=='information/news'?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $support; ?>"><span class="m_support m_support<?php echo $_GET['route']=='product/support'?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $dealers; ?>"><span class="m_dealers m_dealers<?php echo $_GET['route']=='information/dealers'?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $registration; ?>"><span class="m_regis m_regis<?php echo $_GET['route']=='information/registration'?'_on':'';?>"></span></a></li>
			<li class="l"><a class="m-a" href="<?php echo $contact; ?>"><span class="m_contact m_contact<?php echo $_GET['route']=='information/contact'?'_on':'';?>"></span></a></li>
		</ul>
	</div>
</div>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
<div class="contenter pad-B10">
-->