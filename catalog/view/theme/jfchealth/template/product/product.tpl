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
                    <td align="left" valign="top">(<?PHP echo $model; ?>)<br />
<?PHP echo $heading_title; ?></td>
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
<?PHP echo $feature; ?>
</div>

<div class="bottom-bar" style="margin-top:90px;position:relative;top:752px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
