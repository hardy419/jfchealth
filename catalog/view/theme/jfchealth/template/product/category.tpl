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
            <td><img src="<?PHP echo $title_image; ?>" width="670" height="34" /></td>
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
                <?PHP
                for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
                ?>
                    <td width="210"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="210" height="250" border="0" /></a></td>
                <?PHP
                    if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
                } else {
                ?>
                    <td width="210">&nbsp;</td>
                <?PHP
                    if($idx<2) { echo '<td width="20">&nbsp;</td>'; }
                }
                ?>
              </tr>
              <tr>
                <?PHP
                for($idx=0; $idx<3; ++$idx) if(isset($products[$idx])) {
                ?>
                    <td height="40" class="index_content_txt"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
                      (<?php echo $products[$idx]['model']; ?>)</font></a></td>
                <?PHP
                    if($idx<2) { echo '<td class="index_content_txt">&nbsp;</td>'; }
                } else {
                ?>
                    <td height="40" class="index_content_txt">&nbsp;</td>
                <?PHP
                    if($idx<2) { echo '<td class="index_content_txt">&nbsp;</td>'; }
                }
                ?>
              </tr>
              <tr>
                <?PHP
                for($idx=3; $idx<6; ++$idx) if(isset($products[$idx])) {
                ?>
                    <td width="210"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><img src="<?php echo $products[$idx]['thumb']; ?>" width="210" height="250" border="0" /></a></td>
                <?PHP
                    if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
                } else {
                ?>
                    <td width="210">&nbsp;</td>
                <?PHP
                    if($idx<5) { echo '<td width="20">&nbsp;</td>'; }
                }
                ?>
              </tr>
              <tr>
                <?PHP
                for($idx=3; $idx<6; ++$idx) if(isset($products[$idx])) {
                ?>
                    <td height="40" class="index_content_txt"><a href="<?php echo $products[$idx]['href']; ?>" target="_parent"><font color="#252525"><?php echo $products[$idx]['name']; ?><br />
                      (<?php echo $products[$idx]['model']; ?>)</font></a></td>
                <?PHP
                    if($idx<5) { echo '<td class="index_content_txt">&nbsp;</td>'; }
                } else {
                ?>
                    <td height="40" class="index_content_txt">&nbsp;</td>
                <?PHP
                    if($idx<5) { echo '<td class="index_content_txt">&nbsp;</td>'; }
                }
                ?>
              </tr>
              <tr>
                <td height="40" class="index_content_txt">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
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

<div class="bottom-bar" style="margin-top:90px;position:relative;top:790px;z-index:2147483647;">
<?php echo $footer; ?>
</div>

</body>
</html>
