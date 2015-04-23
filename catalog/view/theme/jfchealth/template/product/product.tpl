<?php echo $header; ?>

      <tr>
        <td height="702" colspan="3" valign="top"><table width="920" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="230" height="30" valign="top">&nbsp;</td>
            <td width="20">&nbsp;</td>
            <td width="670">&nbsp;</td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="<?PHP echo $detail_title_image; ?>" width="670" height="34" border="0" usemap="#Map" />
              <map name="Map" id="Map">
                <area shape="rect" coords="1,7,69,35" href="?route=product/category&path=<?PHP echo $_GET['path'] ?>" tppabs="http://jfchealth.com/new/product02.html" target="_parent" />
              </map>
              </td>
            </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td height="20">&nbsp;</td>
            </tr>
          <tr>
            <td align="left" valign="top"><table width="230" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="160" height="50">&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <?php echo $column_left; ?>
            </table></td>
            <td>&nbsp;</td>
            <td align="left" valign="top"><table width="670" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="310" height="350" rowspan="2" align="left" valign="top"><table width="310" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="350"><img id="imgmain" src="<?PHP echo $images[0]['thumb']; ?>" width="310" height="350" /></td>
                  </tr>
                  <tr>
                    <td><table width="310" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <?PHP
                            for($idx=0; $idx<3; ++$idx) if(isset($images[$idx])) {
                          ?>
                              <td width="90"><img style="cursor:pointer" src="<?PHP echo $images[$idx]['thumb']; ?>" width="90" height="102" onclick="changepic(<?PHP echo $idx; ?>);" /></td>
                          <?PHP
                              if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
                            } else {
                          ?>
                              <td width="90">&nbsp;</td>
                          <?PHP
                              if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
                            }
                          ?>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
                <script>
function changepic(id) {
  var a = ["<?PHP if(isset($images[0])) { echo $images[0]['thumb']; } ?>","<?PHP if(isset($images[1])) { echo $images[1]['thumb']; } ?>","<?PHP if(isset($images[2])) { echo $images[2]['thumb']; } ?>"];
  document.getElementById("imgmain").src = a[id];
}
</script>
                <td width="20" rowspan="2">&nbsp;</td>
                <td align="left" valign="top" class="product_name"><table width="340" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="left" valign="top">(JF-139B)<br />
半截式駿豐頻譜水保健儀</td>
                  </tr>
                  <tr>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left" valign="top" class="index_content_txt"><?php echo $description; ?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" valign="top"><a href="?route=information/contactus" target="_parent"><img src="<?PHP echo $dir_image; ?>btn_enqury.png" width="163" height="46" border="0" /></a></td>
                  </tr>
                </table></td>
                </tr>
              
              
              
            </table></td>
            </tr>
          

          
        </table></td>
      </tr>
      

    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</div><!-- top-bar -->

<div id="description" style="position:relative;left:622px;top:752px;">
    <table width="670" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="right" valign="top" class="index_content_txt">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="20" class="index_content_txt">&nbsp;</td>
                <td class="index_content_txt">&nbsp;</td>
                <td class="index_content_txt">&nbsp;</td>
                </tr>
              <tr>
                <td colspan="3"><table width="670" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="product_name">頻譜水的特點</td>
                  </tr>
                  <tr>
                    <td><img src="<?PHP echo $dir_image; ?>img_product_line.png" width="670" height="1" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="index_content_txt">1. 更容易被人體吸收和利用;<br />
                      <br />
2. 增加對人體各系統的供氧;<br />
<br />
3. 有利於人體的新陳代謝;<br />
<br />
4. 減少由氯仿帶來的不健康因素;<br />
<br />
5. 提高人體免疫功能。<br />
                            </span></span></td>
                  </tr>
                  <tr>
                    <td height="30" class="index_content_txt">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="product_name">產品輔助功能</td>
                  </tr>
                  <tr>
                    <td class="index_content_txt"><img src="<?PHP echo $dir_image; ?>img_product_line.png" width="670" height="1" /></td>
                  </tr>
                  <tr>
                    <td class="index_content_txt">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="index_content_txt">1. 改善微循環及血液流變學特性，預防心腦血管病;<br />
                      <br />
2. 維護泌尿系統健康;<br />
<br />
3. 增強胃腸功能，促進食物消化與營養吸收;<br />
<br />
4. 有助促進神經系統功能平衡代謝;<br />
<br />
5. 提高人體綜合免疫能力。</td>
                  </tr>
                  <tr>
                    <td height="30" class="index_content_txt">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="product_name">主要研究機構</td>
                  </tr>
                  <tr>
                    <td class="index_content_txt"><img src="<?PHP echo $dir_image; ?>img_product_line.png" width="670" height="1" /></td>
                  </tr>
                  <tr>
                    <td class="index_content_txt">&nbsp;</td>
                  </tr>
                  <tr>
                    <td class="index_content_txt">a) 中國計量科學研究院;<br />
                      <br />
b) 北京大學分析測試中心;<br />
<br />
c) 解放軍總醫院（301醫院）;<br />
<br />
d) 國家城市供水水質監測網北京監測站;<br />
<br />
e) 中山醫科大學及廣州市紅十字會醫院。</td>
                  </tr>
                  
                  
                  
                  
                  
                  
                </table></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                </tr>
    </table>
</div>

<div class="bottom-bar" style="margin-top:90px;position:relative;top:752px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
