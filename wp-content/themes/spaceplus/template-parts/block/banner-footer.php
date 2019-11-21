<?php
$locations = get_nav_menu_locations();
$theme_location = 'primary';
$menu = get_term($locations[$theme_location], 'nav_menu');
$menu_items = wp_get_nav_menu_items($menu->term_id);
$postID = get_the_ID();
$nextPage = 0;
foreach ($menu_items as $index => $menu) {
    if ($menu->object_id == $postID) {
        $nextPage = $index + 1;
    }
}
$page = $menu_items[$nextPage];
?>
<?php if ($page) { 
    $srcImage = wp_get_attachment_url(get_post_thumbnail_id($page->ID));
    ?>
    <div class="pnp-bg">
        <div class="content container-fluid">
            <div class="row no-gutter full-width-layout">
                <div class="col-md-12">
                    <section class="component component-expanding-cta smoothstate">
                        <div class="spacer"></div>
                        <a href="<?php echo $page->url?>" class="inner">
                            <div class="background" style="background-image: url(<?php echo $srcImage ;?>);" 
                                 data-mobile="<?php echo $srcImage ;?>"></div>
                            <div class="caption">
                                <div class="subtitle"></div>
                                <h4>
                                    <?php echo $page->title;?>
                                </h4>
                            </div>
                        </a>
                    </section>
                </div>
            </div>
        </div>
    </div>
<?php } else { ?>
    <div class="pnp-bg">
        <div class="content container-fluid">
            <div class="row no-gutter full-width-layout">
                <div class="col-md-12">
                    <section class="component-expanding-cta smoothstate">
                        <div class="spacer"></div>
                        <a href="/lien-he" class="inner">
                            <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_10.jpg?x63270);"></div>
                            <div class="caption">
                                <div class="subtitle"></div>
                                <h4>About</h4>
                            </div>
                        </a>
                    </section>
                </div>
            </div>
        </div>
    </div>
<?php
}?>