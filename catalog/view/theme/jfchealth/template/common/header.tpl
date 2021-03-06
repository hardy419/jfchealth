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
<script type="text/javascript" src="catalog/view/theme/jfchealth/js/highslide/highslide-full.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/jfchealth/js/highslide/highslide.css" />
<script type="text/javascript">
hs.graphicsDir = 'catalog/view/theme/jfchealth/js/highslide/graphics/';
hs.align = 'center';
hs.fadeInOut = true;
hs.dimmingOpacity = 0.75;
</script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script>
// Switch language
function swt_lang(l) {
  $.ajax({
    type:'POST',
    url:'?route=module/language',
    data:{
      language_code:l,
      redirect:window.location.href
    },
    success:function(data) {
      window.location.reload();
    }
  });
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function show_submenu(name,map){
  $('.sub-menu img').attr('src','<?PHP echo $dir_image_lang; ?>menu/'+name);
  $('.sub-menu img').attr('usemap',map);
  $('.sub-menu').css('display','block');
  $('.content').css('margin-top','0');
}
function hide_submenu(){
  $('.sub-menu').css('display','none');
  $('.content').css('margin-top','40px');
}
</script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.footer_txt {
	font-size: 12px;
	color: #FFFFFF;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	color: #FFFFFF;
}
a:active {
	text-decoration: none;
	color: #FFFFFF;
}
-->
</style>

<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/jfchealth/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/jfchealth/stylesheet/ie6.css" />
</script>
<![endif]-->
</head>
<div style="position:absolute;width:100%;height:70px;background-image:url('<?PHP echo $dir_image; ?>img_menu_bg.png');background-repeat:repeat-x;z-index:-1;top:100px;"></div>
<body onload="MM_preloadImages('<?PHP echo $dir_image_lang; ?>menu/btn_menu_home_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_aboutus_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_news_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_product_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_experience_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_course_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_share_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_magazine_mo.png','<?PHP echo $dir_image_lang; ?>menu/btn_menu_contactus_mo.png')">
<div class="top-bar">
<table width="1280" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="100"><table width="1280" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20" height="20" align="left" valign="middle"></td>
        <td width="670"></td>
        <td width="670"></td>
        <td width="20"></td>
      </tr>
      <tr>
        <td height="80" align="left" valign="middle">&nbsp;</td>
        <td align="left" valign="top"><a href="index.php" target="_parent"><img src="<?PHP echo $dir_image; ?>img_logo.png" width="259" height="59" /></a></td>
        <td align="right" valign="top"><table width="378" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="right" valign="middle"><a onclick="return hs.expand(this, {align:'center'});" href="<?PHP echo $dir_image; ?>JFC_wechatQR.png"><img src="<?PHP echo $dir_image; ?>btn_wechat.png" width="106" height="30" /></a></td>
            <td width="20" valign="middle">&nbsp;</td>
            <td width="127" valign="middle"><a href="http://www.junfeng.com.cn/index.html" target="_blank"><img src="<?PHP echo $dir_image; ?>btn_chinasite.png" width="127" height="16" border="0" /></a></td>
            <td width="20" valign="middle">&nbsp;</td>
            <td width="16" valign="middle"><a href='javascript:swt_lang("zh-HK")'><img src="<?PHP echo $dir_image; ?>btn_language_tw.png" width="16" height="16" /></a></td>
            <td width="20" valign="middle">&nbsp;</td>
            <td width="16" valign="middle"><a href='javascript:swt_lang("zh")'><img src="<?PHP echo $dir_image; ?>btn_language_cn.png" width="16" height="16" /></a></td>
            <td width="20" valign="middle">&nbsp;</td>
            <td width="33" valign="middle"><a href='javascript:swt_lang("en")'><img src="<?PHP echo $dir_image; ?>btn_language_en.png" width="33" height="13" /></a></td>
          </tr>
        </table></td>
        <td align="right" valign="top">&nbsp;</td>
      </tr>
      
    </table></td>
  </tr>
  <tr>
    <td height="70"><table id="menu-table" width="1280" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="55" height="70">&nbsp;</td>
        <td><a href="?route=common/home" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_home_mo.png" width="98" height="70" id="Image1" onmouseover="(function(){MM_swapImage('Image1','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_home_mo.png',1);hide_submenu();})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=information/aboutus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_aboutus.png" name="Image2" width="133" height="70" border="0" id="Image2" onmouseover="(function(){MM_swapImage('Image2','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_aboutus_mo.png',1);hide_submenu();show_submenu('img_aboutus_sub.png','#aboutus_map');})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/news" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_news.png" name="Image3" width="133" height="70" border="0" id="Image3" onmouseover="(function(){MM_swapImage('Image3','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_news_mo.png',1);hide_submenu();})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/category&path=99" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_product.png" width="133" height="70" border="0" id="Image4" onmouseover="(function(){MM_swapImage('Image4','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_product_mo.png',1);hide_submenu();show_submenu('img_products_sub.png','#product_map');})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/experience" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_experience.png" width="133" height="70" border="0" id="Image5" onmouseover="(function(){MM_swapImage('Image5','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_experience_mo.png',1);hide_submenu();})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/course" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_course.png" width="133" height="70" border="0" id="Image6" onmouseover="(function(){MM_swapImage('Image6','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_course_mo.png',1);hide_submenu();})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/article" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_share.png" width="133" height="70" border="0" id="Image7" onmouseover="(function(){MM_swapImage('Image7','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_share_mo.png',1);hide_submenu();show_submenu('img_share_sub.png','#share_map');})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=product/naturopathy" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_magazine.png" name="Image8" width="133" height="70" border="0" id="Image8" onmouseover="(function(){MM_swapImage('Image8','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_magazine_mo.png',1);hide_submenu();show_submenu('img_magazine_sub.png','#magazine_map');})();" /></a></td>
        <td><img src="<?PHP echo $dir_image; ?>img_menu_line.png" width="1" height="15" /></td>
        <td><a href="?route=information/contactus" target="_parent"><img src="<?PHP echo $dir_image_lang; ?>menu/btn_menu_contactus.png" width="133" height="70" border="0" id="Image9" onmouseover="(function(){MM_swapImage('Image9','','<?PHP echo $dir_image_lang; ?>menu/btn_menu_contactus_mo.png',1);hide_submenu();show_submenu('img_contactus_sub.png','#contactus_map');})();" /></a></td>
        <td width="55">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</div><!-- top-bar -->
<!--div class="debug"></div-->
<div class="sub-menu">
  <img src="" usemap="#product_map" />
  <map name="aboutus_map" id="aboutus_map">
	<area shape="rect" coords="162,0,289,39" href="?route=information/aboutus" target="_parent" />
	<area shape="rect" coords="292,0,421,39" href="?route=information/culture" target="_parent" />
	<area shape="rect" coords="424,0,617,39" href="?route=information/certificate" target="_parent" />
  </map>
  <map name="product_map" id="product_map">
	<area shape="rect" coords="430,0,552,39" href="?route=product/category&path=99" target="_parent" />
	<area shape="rect" coords="555,0,685,39" href="?route=product/category&path=100" target="_parent" />
	<area shape="rect" coords="687,0,814,39" href="?route=product/category&path=102" target="_parent" />
	<area shape="rect" coords="817,0,953,39" href="?route=product/category&path=101" target="_parent" />
  </map>
  <map name="share_map" id="share_map">
	<area shape="rect" coords="826,0,950,39" href="?route=product/article" target="_parent" />
	<area shape="rect" coords="955,0,1082,39" href="?route=product/expert_article" target="_parent" />
	<area shape="rect" coords="1086,0,1224,39" href="?route=product/video" target="_parent" />
  </map>
  <map name="magazine_map" id="magazine_map">
	<area shape="rect" coords="944,0,1075,39" href="?route=product/naturopathy" target="_parent" />
	<area shape="rect" coords="1078,0,1224,39" href="?route=product/magazine" target="_parent" />
  </map>
  <map name="contactus_map" id="contactus_map">
	<area shape="rect" coords="957,0,1085,39" href="?route=information/contactus" target="_parent" />
	<area shape="rect" coords="1087,0,1218,39" href="?route=information/enquiry" target="_parent" />
  </map>
</div>

<script>
$(function(){
  $('#menu-table td a img').mouseout(function(e){
    if(e.pageY<170 || e.pageY>210){
      //$('.debug').html(e.pageY);
      hide_submenu();
    }
    else{
      $('.sub-menu').mouseout(function(e){
        //$('.debug').html(e.pageY);
        if(e.pageY<170 || e.pageY>210){
          hide_submenu();
        }
      });
    }
    MM_swapImgRestore();
  });
});
</script>