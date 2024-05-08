<!-- BEGIN: main -->
<!-- BEGIN: viewcatloop -->
<div class="box-border-shadow m-bottom listz-news">
    <div class="content-box">
        <!-- BEGIN: image --><a href="{CONTENT.link}" title="{CONTENT.title}"><img class="s-border fl left" alt="{HOMEIMGALT1}" src="{HOMEIMG1}" width="150" height="100"/></a><!-- END: image --><strong><a href="{CONTENT.link}" title="{CONTENT.title}">{CONTENT.title}</a></strong>
        <p>
            {CONTENT.hometext}
        </p>
        <div class="aright">
            <a title="{LANG.more}" class="more" href="{CONTENT.link}">{LANG.more}</a>
        </div>
        <!-- BEGIN: adminlink -->
        <p style="text-align : right;">
            {ADMINLINK}
        </p>
        <!-- END: adminlink -->
        <div class="clear">
        </div>
    </div>
</div>
<!-- END: viewcatloop --><!-- BEGIN: related -->
<div class="other-news">
    <h4>{ORTHERNEWS}</h4>
    <ul>
        <!-- BEGIN: loop -->
        <li>
            <a href="{RELATED.link}" title="{RELATED.title}">{RELATED.title}</a>
            <span class="small date">({RELATED.publtime})</span>
        </li>
        <!-- END: loop -->
    </ul>
</div>
<!-- END: related -->
<!-- BEGIN: generate_page -->
<div class="generate_page">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->	
<!-- END: main -->