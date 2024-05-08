<?php
/**
 * @Project NUKEVIET 3.0
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2010 VINADES., JSC. All rights reserved
 * @Createdate 3/9/2010 23:25
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! function_exists( 'nv_support_product' ) )
{
	
	
	function nv_block_config_support_blocks ( $module, $data_block, $lang_block )
    {
        global $db, $language_array, $db_config;
        $html = "";
        $html .= "<tr>";
        $html .= "<td>" . $lang_block['title1'] . "</td>";
        $html .= "<td>\n";
        $html .= "<table class='tab'>\n";
        $html .= "<thread>\n";
        $html .= "<tr>\n";
        $html .= "<td>STT</td>";
        $html .= "<td>" . $lang_block['blockid1'] . "</td>";
        $html .= "<td>" . $lang_block['blockid2'] . "</td>";
        $html .= "<td>" . $lang_block['blockid3'] . "</td>";
        $html .= "</tr>";
        $html .= "</thread>\n";
        $html .= "<tbody class='second'><tr>\n";
        $html .= "<td><strong>1</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang1[]\" size=\"25\" value=\"" . $data_block['banhang1'][0] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang2[]\" size=\"25\" value=\"" . $data_block['banhang2'][0] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_banhang3[]\" size=\"25\" value=\"" . $data_block['banhang3'][0] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "<tbody><tr>\n";
        $html .= "<td><strong>2</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang1[]\" size=\"25\" value=\"" . $data_block['banhang1'][1] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang2[]\" size=\"25\" value=\"" . $data_block['banhang2'][1] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_banhang3[]\" size=\"25\" value=\"" . $data_block['banhang3'][1] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "<tbody class='second'><tr>\n";
        $html .= "<td><strong>3</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang1[]\" size=\"25\" value=\"" . $data_block['banhang1'][2] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_banhang2[]\" size=\"25\" value=\"" . $data_block['banhang2'][2] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_banhang3[]\" size=\"25\" value=\"" . $data_block['banhang3'][2] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "</table>\n";
        $html .= "</td>\n";
        $html .= "</tr>";
        ///////////////
        $html .= "<tr>";
        $html .= "<td>" . $lang_block['title2'] . "</td>";
        $html .= "<td>\n";
        $html .= "<table class='tab'>\n";
        $html .= "<thread>\n";
        $html .= "<tr>\n";
        $html .= "<td>STT</td>";
        $html .= "<td>" . $lang_block['blockid1'] . "</td>";
        $html .= "<td>" . $lang_block['blockid2'] . "</td>";
        $html .= "<td>" . $lang_block['blockid4'] . "</td>";
        $html .= "</tr>";
        $html .= "</thread>\n";
        $html .= "<tbody class='second'><tr>\n";
        $html .= "<td><strong>1</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro1[]\" size=\"25\" value=\"" . $data_block['hotro1'][0] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro2[]\" size=\"25\" value=\"" . $data_block['hotro2'][0] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_hotro3[]\" size=\"25\" value=\"" . $data_block['hotro3'][0] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "<tbody><tr>\n";
        $html .= "<td><strong>2</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro1[]\" size=\"25\" value=\"" . $data_block['hotro1'][1] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro2[]\" size=\"25\" value=\"" . $data_block['hotro2'][1] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_hotro3[]\" size=\"25\" value=\"" . $data_block['hotro3'][1] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "<tbody class='second'><tr>\n";
        $html .= "<td><strong>3</strong></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro1[]\" size=\"25\" value=\"" . $data_block['hotro1'][2] . "\"></td>";
        $html .= "<td><input type=\"text\" name=\"config_hotro2[]\" size=\"25\" value=\"" . $data_block['hotro2'][2] . "\"></td>\n";
        $html .= "<td><input type=\"text\" name=\"config_hotro3[]\" size=\"25\" value=\"" . $data_block['hotro3'][2] . "\"></td>\n";
        $html .= "</tr></tbody>";
        $html .= "</table>\n";
        $html .= "</td>\n";
        $html .= "</tr>";
        
        return $html;
    }

    function nv_block_config_support_blocks_submit ( $module, $lang_block )
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['banhang1'] = $nv_Request->get_array( 'config_banhang1', 'post', 0 );
        $return['config']['banhang2'] = $nv_Request->get_array( 'config_banhang2', 'post', 0 );
        $return['config']['banhang3'] = $nv_Request->get_array( 'config_banhang3', 'post', 0 );
        $return['config']['hotro1'] = $nv_Request->get_array( 'config_hotro1', 'post', 0 );
        $return['config']['hotro2'] = $nv_Request->get_array( 'config_hotro2', 'post', 0 );
        $return['config']['hotro3'] = $nv_Request->get_array( 'config_hotro3', 'post', 0 );
        $return['config']['title_block'][0] = $lang_block['title1'];
        $return['config']['title_block'][1] = $lang_block['title2'];
        return $return;
    }

    function nv_support_product ( $block_config )
    {	
        global $global_config;
         
        if ( file_exists( NV_ROOTDIR . "/themes/" . $global_config['site_theme'] . "/blocks/block_support.tpl" ) )
        {
            $block_theme = $global_config['site_theme'];
        }
        else
        {
            $block_theme = "default";
        }
        
        $xtpl = new XTemplate( "block_support.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/blocks" );
        $xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
        $xtpl->assign( 'TEMPLATE', $block_theme );
        
        $flag = false;
        for( $i= 0; $i<count( $block_config['banhang1'] ); $i++ ){
            
            if( $block_config['banhang1'][$i] != "" && $block_config['banhang2'][$i] != "" && $block_config['banhang3'][$i] != "" ){
                $xtpl->assign( 'BANHANG1', $block_config['banhang1'][$i] );
                $xtpl->assign( 'BANHANG2', $block_config['banhang2'][$i] );
                $xtpl->assign( 'BANHANG3', $block_config['banhang3'][$i] );
                $xtpl->parse( 'main.cat.loop' ); 
                $flag = true;
            }
        }
        if( $flag ){
             $xtpl->assign( 'TITLE', $block_config['title_block'][0] );
            $xtpl->parse( 'main.cat' );
        }
        ///cat 2
        $flag = false;
        for( $i= 0; $i<count( $block_config['hotro1'] ); $i++ ){
            
            if( $block_config['hotro1'][$i] != "" && $block_config['hotro2'][$i] != "" && $block_config['hotro3'][$i] != "" ){
                $xtpl->assign( 'BANHANG1', $block_config['hotro1'][$i] );
                $xtpl->assign( 'BANHANG2', $block_config['hotro2'][$i] );
                $xtpl->assign( 'BANHANG3', $block_config['hotro3'][$i] );
                $xtpl->parse( 'main.cat.loop2' ); 
                $flag = true;
            }
        }
        if( $flag ){
            $xtpl->assign( 'TITLE', $block_config['title_block'][1] );
            $xtpl->parse( 'main.cat' );
        }
        $xtpl->parse( 'main' );
        return $xtpl->text( 'main' );
    }
}
if ( defined( 'NV_SYSTEM' ) )
{
    $content = nv_support_product( $block_config );
}

?>