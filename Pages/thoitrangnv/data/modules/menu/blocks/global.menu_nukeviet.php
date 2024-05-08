<?php

/**
 * @Project NUKEVIET 3.4
 * @Author Thangbv (kid.apt@gmail.com)
 * @Copyright (C) 2012 Thangbv All rights reserved
 * @Createdate 01-02-2013 11:17
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'nv_menu_site_nukeviet' ) )
{
	/**
	 * nv_block_config_menu_nukeviet()
	 * 
	 * @param mixed $module
	 * @param mixed $data_block
	 * @param mixed $lang_block
	 * @return
	 */
	function nv_block_config_menu_nukeviet( $module, $data_block, $lang_block )
	{
		$html = "";
		$html .= "<tr>";
		$html .= "	<td>" . $lang_block['menu'] . "</td>";
		$html .= "	<td><select name=\"menuid\">\n";

		$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $module . "_menu` ORDER BY `id` DESC";
		$list = nv_db_cache( $sql, 'id', $module );
		foreach( $list as $l )
		{
			$sel = ( $data_block['menuid'] == $l['id'] ) ? ' selected' : '';
			$html .= "<option value=\"" . $l['id'] . "\" " . $sel . ">" . $l['title'] . "</option>\n";
		}

		$html .= "	</select></td>\n";
		$html .= "</tr>";
		$html .= "<tr>";
		$html .= "<td>";
		$html .= $lang_block['title_length'];
		$html .= "</td>";
		$html .= "<td>";
		$html .= "<input type=\"text\" name=\"config_title_length\" value=\"" . $data_block['title_length'] . "\"/>";
		$html .= "</td>";
		$html .= "</tr>";

		return $html;
	}

	/**
	 * nv_block_config_menu_nukeviet_submit()
	 * 
	 * @param mixed $module
	 * @param mixed $lang_block
	 * @return
	 */
	function nv_block_config_menu_nukeviet_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['menuid'] = $nv_Request->get_int( 'menuid', 'post', 0 );
		$return['config']['title_length'] = $nv_Request->get_int( 'config_title_length', 'post', 24 );
		return $return;
	}

	/**
	 * nv_bmenu_check_currit()
	 * 
	 * @param mixed $url
	 * @param integer $type
	 * @return
	 */
	if( ! nv_function_exists( 'nv_bmenu_check_currit' ) )
	{
		function nv_bmenu_check_currit( $url, $type = 0 )
		{
			global $module_name, $home, $client_info, $global_config;

			$url = nv_unhtmlspecialchars( $url );

			if( $client_info['selfurl'] == $url ) return true; // Chinh xac tuyet doi

			$_curr_url = NV_BASE_SITEURL . str_replace( $global_config['site_url'] . '/', '', $client_info['selfurl'] );
			$_url = nv_url_rewrite( $url, true );

			if( $home and ( $_url == nv_url_rewrite( NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA ) or $_url == NV_BASE_SITEURL . "index.php" or $_url == NV_BASE_SITEURL ) )
			{
				return true;
			}
			elseif( $type == 2 )
			{
				if( preg_match( '#' . preg_quote( $_url, '#' ) . '#', $_curr_url ) ) return true;
				return false;
			}
			elseif( $type == 1 ) //
			{
				if( preg_match( '#^' . preg_quote( $_url, '#' ) . '#', $_curr_url ) ) return true;
				return false;
			}
			elseif( $_curr_url == $_url )
			{
				return true;
			}

			return false;
		}
	}
	/**
	 * nv_bmenu_active_menu()
	 * 
	 * @param mixed $cat
	 * @return
	 */
	if( ! nv_function_exists( 'nv_bmenu_active_menu' ) )
	{
		function nv_bmenu_active_menu( $cat )
		{
			if( $cat['current'] === true and ! $cat['html_class'] )
			{
				$class = ' class="selected"';
			}
			elseif( $cat['current'] === false and $cat['html_class'] )
			{
				$class = ' class="' . $cat['html_class'] . '"';
			}
			elseif( $cat['current'] === true and $cat['html_class'] )
			{
				$class = ' class="' . $cat['html_class'] . ' selected"';
			}
			else
			{
				$class = '';
			}

			return $class;
		}
	}
	// Ham xu ly chinh cho block
	/**
	 * nv_menu_site_nukeviet()
	 * 
	 * @param mixed $block_config
	 * @return
	 */
	function nv_menu_site_nukeviet( $block_config )
	{
		global $db, $module_info, $lang_global;

		$list_cats = array();
		$sql = "SELECT `id`, `parentid`, `title`, `link`, `note`, `subitem`, `who_view`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type` FROM `" . NV_PREFIXLANG . "_menu_rows` WHERE `status`=1 AND `mid` = " . $block_config['menuid'] . " ORDER BY `weight` ASC";
		$list = nv_db_cache( $sql, '', 'menu' );

		foreach( $list as $row )
		{
			if( nv_set_allow( $row['who_view'], $row['groups_view'] ) )
			{
				switch( $row['target'] )
				{
					case 1:
						$row['target'] = '';
						break;
					default:
						$row['target'] = ' onclick="this.target=\'_blank\'"';
				}

				$list_cats[$row['id']] = array(
					'id' => $row['id'], //
					'parentid' => $row['parentid'], //
					'subcats' => $row['subitem'], //
					'title' => nv_clean60( $row['title'], $block_config['title_length'] ), //
					'target' => $row['target'], //
					'note' => ( $row['note'] ) ? $row['note'] : $row['title'], //
					'link' => nv_url_rewrite( nv_unhtmlspecialchars( $row['link'] ), true ), //
					'html_class' => $row['css'], //
					'current' => nv_bmenu_check_currit( $row['link'], ( int )$row['active_type'] ), //
					);
			}
		}
		if( file_exists( NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/menu/block_menu_nukeviet.tpl" ) )
		{
			$block_theme = $module_info['template'];
		}
		else
		{
			$block_theme = "default";
		}

		$xtpl = new XTemplate( "block_menu_nukeviet.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/modules/menu" );
		$xtpl->assign( 'BLOCK_THEME', $block_theme );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
        $xtpl->assign( 'GLANG', $lang_global );
		$array_id_menu = array();
		foreach( $list_cats as $cat )
		{
			if( empty( $cat['parentid'] ) )
			{
				$array_id_menu[] = "'_menu" . $cat['id'] . "'";
				$cat['class'] = nv_bmenu_active_menu( $cat );
				$xtpl->assign( 'CAT1', $cat );
				if( ! empty( $cat['subcats'] ) )
				{
					$list = explode( ",", $cat['subcats'] );

					foreach( $list_cats as $cat )
					{
						$catid = $cat['id'];
						if( in_array( $catid, $list ) )
						{
							$list_cats[$catid]['class'] = nv_bmenu_active_menu( $list_cats[$catid] );

							$xtpl->assign( 'MENUTREE', $list_cats[$catid] );
							$xtpl->parse( 'main.loopcat1.cat2.loopcat2' );
						}
					}
					$xtpl->parse( 'main.loopcat1.cat2' );
				}
				$xtpl->parse( 'main.loopcat1' );
			}
		}
		$xtpl->assign( 'array_id_menu', implode( ",", $array_id_menu ) );
		$xtpl->parse( 'main' );

		return $xtpl->text( 'main' );

	}

	// Hien thi menu con
	/**
	 * nv_sub_menu()
	 * 
	 * @param mixed $style
	 * @param mixed $list_cats
	 * @param mixed $list_sub
	 * @return
	 */
	function nv_sub_menu( $style, $list_cats, $list_sub )
	{
		global $module_info;

		if( file_exists( NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/menu/" . $style . ".tpl" ) )
		{
			$block_theme = $module_info['template'];
		}
		else
		{
			$block_theme = "default";
		}

		$xtpl = new XTemplate( $style . ".tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/modules/menu" );

		if( empty( $list_sub ) )
		{
			return "";
		}
		else
		{
			$list = explode( ",", $list_sub );

			foreach( $list_cats as $cat )
			{
				$catid = $cat['id'];
				if( in_array( $catid, $list ) )
				{
					if( $style == 'pro_dropdown' )
					{
						if( $list_cats[$catid]['subcats'] != "" )
						{
							$xtpl->assign( 'cla', 'class="fly"' );
						}
						else
						{
							$xtpl->assign( 'cla', '' );
						}
					}
					else
					{
						$xtpl->assign( 'cla', '' );
					}

					$list_cats[$catid]['class'] = nv_bmenu_active_menu( $list_cats[$catid] );

					$xtpl->assign( 'MENUTREE', $list_cats[$catid] );

					if( ! empty( $list_cats[$catid]['subcats'] ) )
					{
						$tree = nv_sub_menu( $style, $list_cats, $list_cats[$catid]['subcats'] );

						$xtpl->assign( 'TREE_CONTENT', $tree );
						$xtpl->parse( 'tree.tree_content' );
					}

					$xtpl->parse( 'tree' );
				}
			}

			return $xtpl->text( 'tree' );
		}
	}

}

if( defined( 'NV_SYSTEM' ) )
{
	$content = nv_menu_site_nukeviet( $block_config );
}

?>