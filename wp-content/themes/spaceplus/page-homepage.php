<?php
/*    Template Name: Trang chủ
 * The template for displaying Home page
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
$args = array(
    'orderby' => 'date',
    'order' => 'DESC',
    'category' => '',
    'category_name' => '',
    'include' => '',
    'exclude' => '',
    'post_type' => 'service',
    'post_status' => 'publish',
    'suppress_filters' => true
);
$services = get_posts($args);
?>  
<div class="container-fluid" id="wrapper">
    <div class="component slider-nav" id="sliderNav">
        <div class="slider-wrapper">
            <ul class="slides" style="width: 1400vw; transform: translateX(-650vw);">
                <?php
                foreach ($services as $service) {
                    $srcImage = wp_get_attachment_url(get_post_thumbnail_id($service->ID));
                    ?>
                    <li class="cell">
                        <div class="inner" data-link="#">
                            <div class="background" style="background-image: url(<?php echo $srcImage; ?>);" 
                                 data-desktop="<?php echo $srcImage; ?>" 
                                 data-mobile="<?php echo $srcImage; ?>"></div>
                        </div>
                    </li>
                <?php } ?>
            </ul>
        </div>
        <div class="captions-full">
            <ul>
                <?php foreach ($services as $service) { 
                    $terms = get_the_terms($service->ID, 'danh-muc-dich-vu' );
                    $tags = get_the_terms($service->ID, 'tag-service'); 
                    ?>
                    <li class="cell">
                        <div class="inner" data-link="#">
                            <div class="caption smoothstate no-cta">
                                <div class="subtitle">
                                    <span><?php echo $terms[0]->name ;?></span>
                                    <h1 class="seo-title"><?php echo $tags[0]->name ;?></h1></div>
                                <h4><?php echo $service->post_title; ?></h4>
                                <p><?php echo $service->post_content; ?></p>
                                <button class="loadpage">
                                    <span>Xem thêm</span>
                                    <div class="left"></div>
                                    <div class="top"></div>
                                    <div class="right"></div>
                                    <div class="bottom"></div>
                                </button>
                            </div>
                        </div>
                    </li>
                <?php } ?>
            </ul>
        </div>
        <div class="section-wrap">
            <div class="inner">
                <div class="current"></div>
            </div>
        </div>
        <div class="left back">
            <div class="cursor">
                <img src="<?php echo get_template_directory_uri(); ?>/images/ios-arrow-left.svg" alt="back">
            </div>
            <div class="hit-area"></div>
        </div>
        <div class="right next">
            <div class="cursor">
                <img src="<?php echo get_template_directory_uri(); ?>/images/ios-arrow-right.svg" alt="next">
            </div>
            <div class="hit-area"></div>
        </div>
        <div class="progress-wrap">
            <div class="progress">
                <div class="progress-bar grabbable"></div>
            </div>
        </div>
        <div class="countdown">
            <div class="bar"></div>
        </div>
    </div>
</div>
<div id="modal-skeleton">
    <div class="modal fade zoom pnp-modal" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <header class="modal-header">
                    <a class="close-modal" data-dismiss="modal" aria-label="Close">
                        <i class="ion-ios-close-empty"></i>
                    </a>
                    <div class="clearfix"></div>
                </header>
                <div class="modal-body">
                    <p>An error has occurred, please try again later.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>
