<?php
/**
 * @Project NUKEVIET 3.0
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2010 VINADES., JSC. All rights reserved
 * @Createdate 3/9/2010 23:25
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! nv_function_exists( 'nv_iframe_blocks' ) )
{

    function nv_block_config_iframe_blocks ( $module, $data_block, $lang_block )
    {
        $html = "";
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['url'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_url\" size=\"50\" value=\"" . $data_block['url'] . "\"/></td>";
        $html .= "</tr>";
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['width'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_width\" size=\"5\" value=\"" . $data_block['width'] . "\"/></td>";
        $html .= "</tr>";
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['height'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_height\" size=\"5\" value=\"" . $data_block['height'] . "\"/></td>";
        $html .= "</tr>";
        return $html;
    }

    function nv_block_config_iframe_blocks_submit ( $module, $lang_block )
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['url'] = $nv_Request->get_string( 'config_url', 'post', 0 );
        $return['config']['width'] = $nv_Request->get_int( 'config_width', 'post', 0 );
        $return['config']['height'] = $nv_Request->get_int( 'config_height', 'post', 0 );
        return $return;
    }

    function nv_iframe_blocks ( $block_config )
    {
		$content = '
			<iframe id="I1" border="0" frameborder="0" marginheight="0" marginwidth="0" name="I1" src="' . $block_config['url'] . '" style="width: ' . $block_config['width'] . 'px; height: ' . $block_config['height'] . 'px">
			Your browser does not support inline frames or is currently configured not to display inline frames.
			</iframe>
		';
		return $content;
    }
}

if ( defined( 'NV_SYSTEM' ) )
{
    $content = nv_iframe_blocks( $block_config );
}

?>