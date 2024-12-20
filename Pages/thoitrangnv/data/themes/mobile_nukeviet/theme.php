<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2012 VINADES.,JSC. All rights reserved
 * @Createdate 31/05/2010, 00:36
 */

if( ! defined( 'NV_SYSTEM' ) or ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

function nv_site_theme( $contents )
{
	global $home, $array_mod_title, $lang_global, $language_array, $global_config, $module_name, $module_info, $op, $mod_title, $my_head, $my_footer, $client_info;

	if( ! file_exists( NV_ROOTDIR . "/themes/" . $global_config['module_theme'] . "/layout/layout." . $module_info['layout_funcs'][$op] . ".tpl" ) )
	{
		nv_info_die( $lang_global['error_layout_title'], $lang_global['error_layout_title'], $lang_global['error_layout_content'] );
	}

	if( defined( 'NV_IS_ADMIN' ) )
	{
		$my_head .= "<link rel=\"stylesheet\" href=\"" . NV_BASE_SITEURL . "themes/" . $global_config['module_theme'] . "/css/admin.css\" type=\"text/css\" />";
	}

	$xtpl = new XTemplate( "layout." . $module_info['layout_funcs'][$op] . ".tpl", NV_ROOTDIR . "/themes/" . $global_config['module_theme'] . "/layout/" );
	$xtpl->assign( 'LANG', $lang_global );
	$xtpl->assign( 'TEMPLATE', $global_config['module_theme'] );
	$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
	$xtpl->assign( 'THEME_META_TAGS', nv_html_meta_tags() );
	$xtpl->assign( 'THEME_SITE_JS', nv_html_site_js() );
	$xtpl->assign( 'THEME_CSS', nv_html_css() );
	$xtpl->assign( 'THEME_PAGE_TITLE', nv_html_page_title() );
	$xtpl->assign( 'MODULE_CONTENT', $contents . "&nbsp;" );
	$xtpl->assign( 'THEME_SITE_HREF', NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA );
	$xtpl->assign( 'NV_NAME_VARIABLE', NV_NAME_VARIABLE );
	$xtpl->assign( 'NV_LANG_VARIABLE', NV_LANG_VARIABLE );
	$xtpl->assign( 'NV_LANG_DATA', NV_LANG_DATA );

	if( $global_config['lang_multi'] and sizeof( $global_config['allow_sitelangs'] ) > 1 )
	{
		$xtpl->assign( 'SELECTLANGSITE', $lang_global['langsite'] );
	
		foreach( $global_config['allow_sitelangs'] as $lang_i )
		{
			$langname = $language_array[$lang_i]['name'];
			$xtpl->assign( 'LANGSITENAME', $langname );
			$xtpl->assign( 'LANGSITEURL', NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . $lang_i );
		
			if( NV_LANG_DATA != $lang_i )
			{
				$xtpl->parse( 'main.language.langitem' );
			}
			else
			{
				$xtpl->parse( 'main.language.langcuritem' );
			}
		}
		
		$xtpl->parse( 'main.language' );
	}

	//Breakcolumn
	if( $home != 1 )
	{
		$arr_cat_title_i = array(
			'catid' => 0,
			'title' => $module_info['custom_title'],
			'link' => NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&amp;" . NV_NAME_VARIABLE . "=" . $module_name
		);
		
		$xtpl->assign( 'BREAKCOLUMN', $arr_cat_title_i );
		$xtpl->parse( 'main.mod_title.breakcolumn' );

		foreach( $array_mod_title as $arr_cat_title_i )
		{
			$xtpl->assign( 'BREAKCOLUMN', $arr_cat_title_i );
			$xtpl->parse( 'main.mod_title.breakcolumn' );
		}
		
		$xtpl->parse( 'main.mod_title' );
	}

	$xtpl->assign( 'THEME_IMG_CRONJOBS', NV_BASE_SITEURL . "index.php?second=cronjobs&amp;p=" . nv_genpass() );

	// Chuyen doi giao dien
	if( ! empty( $global_config['switch_mobi_des'] ) and ! empty( $module_info['mobile'] ) )
	{
		$num_theme_type = sizeof( $global_config['array_theme_type'] ) - 1;
	
		foreach( $global_config['array_theme_type'] as $i => $theme_type )
		{
			$xtpl->assign( 'STHEME_TYPE', NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&amp;" . NV_NAME_VARIABLE . "=" . $module_name . "&amp;nv" . NV_LANG_DATA . "themever=" . $theme_type . "&amp;nv_redirect=" . nv_base64_encode( $client_info['selfurl'] ) );
			$xtpl->assign( 'STHEME_TITLE', $lang_global['theme_type_' . $i] );
			$xtpl->assign( 'STHEME_INFO', sprintf( $lang_global['theme_type_chose'], $lang_global['theme_type_' . $i] ) );

			if( $theme_type == $global_config['current_theme_type'] )
			{
				$xtpl->parse( 'main.theme_type.loop.current' );
			}
			else
			{
				$xtpl->parse( 'main.theme_type.loop.other' );
			}

			if( $i < $num_theme_type ) $xtpl->parse( 'main.theme_type.loop.space' );
			$xtpl->parse( 'main.theme_type.loop' );
		}
		
		$xtpl->parse( 'main.theme_type' );
	}
	unset( $theme_type, $i, $num_theme_type );

	$xtpl->parse( 'main' );

	$sitecontent = $xtpl->text( 'main' );
	$sitecontent = nv_blocks_content( $sitecontent );

	if( defined( 'NV_IS_ADMIN' ) )
	{
		$my_footer = nv_admin_menu() . $my_footer;
	}

	if( ! empty( $my_head ) ) $sitecontent = preg_replace( '/(<\/head>)/i', $my_head . "\\1", $sitecontent, 1 );
	if( ! empty( $my_footer ) ) $sitecontent = preg_replace( '/(<\/body>)/i', $my_footer . "\\1", $sitecontent, 1 );

	return $sitecontent;
}
<!-- $CHAT -->
<script language="javascript">
    /*************************
    Ph?n m?m LiveChat  mi?n phí
    Verison 2.1 (Update 04-11-2015)
    Tác gi? dientugiasv.com
    Email: 
    Download Source: http://dienthongminhgiasi.com/livechat-fanpage-facebook/
    *************************/
    var f_chat_vs = "Version 2.1";
    var f_chat_domain =  "http://dienthongminhgiasi.com";    
    var f_chat_name = "Hỗ trợ online";
    var f_chat_star_1 = "Chào bạn, bạn cần chúng tôi giúp gì!";
    var f_chat_star_2 = 'Bạn hãy để lại số điện thoại của bạn chúng tôi sẽ liên lạc cho bạn sau nhé!';
    var f_chat_star_3 = "<a href='javascript:;' onclick='f_bt_start_chat()' id='f_bt_start_chat'>Bật Chat</a>";
    var f_chat_star_4 = "Chú ý: Bạn phải đăng nhập facebook <a href='http://facebook.com/' target='_blank' rel='nofollow'>Facebook</a> mới có thể trò chuyện";
    var f_chat_fanpage = "baotromstc"; /* Đây là địa chỉ Fanpage*/
    var f_chat_background_title = "#F77213"; /* Lấy mã màu tại đây http://megapixelated.com/tags/ref_colorpicker.asp */
    var f_chat_color_title = "#fff";
    var f_chat_cr_vs = 21; /* Version ID */
    var f_chat_vitri_manhinh = "right:10px;"; /* Right: 10px; hoặc left: 10px; hoặc căn giữa left:45% */    
</script>
<!-- $Chat iCon Font (có thể bỏ) -->
<link rel="stylesheet" href="http://dienthongminhgiasi.com/livechat/fonts/css/font-awesome.min.css" type="text/css"/>
<!-- $Chat Javascript (không được xóa) -->
<script src="http://dienthongminhgiasi.com/livechat/chat.js?vs=2.1"></script>
<!-- $Chat HTML (không được xóa) -->
<div id='fb-root'></div>
<a title='Mở hộp Chat' id='chat_f_b_smal' onclick='chat_f_show()' class='chat_f_vt'><i class='fa fa-comments title-f-chat-icon'></i> Chat</a><div id='b-c-facebook' class='chat_f_vt'><div id='chat-f-b' onclick='b_f_chat()' class='chat-f-b'><i class='fa fa-comments title-f-chat-icon'></i><label id="f_chat_name"></label><span id='fb_alert_num'>1</span><div id='t_f_chat'><a href='javascript:;' onclick='chat_f_close()' id='chat_f_close' class='chat-left-5'>x</a></div></div><div id='f-chat-conent' class='f-chat-conent'><script>document.write("<div class='fb-page' data-tabs='messages' data-href='https://www.facebook.com/"+f_chat_fanpage+"' data-width='250' data-height='310' data-small-header='true' data-adapt-container-width='true' data-hide-cover='true' data-show-facepile='false' data-show-posts='true'></div>");</script><div id='fb_chat_start'><div id='f_enter_1' class='msg_b fb_hide'></div><div id='f_enter_2' class='msg_b fb_hide'></div><br/><p id='f_enter_3' class='fb_hide' align='center'><a href='javascript:;' onclick='f_bt_start_chat()' id='f_bt_start_chat'>Bật Chat</a></p><br/><p id='f_enter_4' class='fb_hide' align='center'></p></div><div id="f_chat_source" class='chat-single'></div></div></div>
<!-- #CHAT -->


?>