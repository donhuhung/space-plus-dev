<?php
/*    Template Name: Tin tức
 * The template for displaying News
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
    'post_type' => 'article',
    'post_status' => 'publish',
    'suppress_filters' => true
);
$articles = get_posts($args);
$srcImage = wp_get_attachment_url(get_post_thumbnail_id($post->ID));
$titleHead = get_field('title_header', $post->ID);
$description = get_field('description', $post->ID);
?>  
<div class="container-fluid" id="wrapper">
    <div class="component slider-nav" id="sliderNav">
        <div class="slider-wrapper">
            <ul class="slides">
                <li class="cell active">
                    <div class="inner" data-link="#">
                        <div class="background" style="background-image: url(<?php echo $srcImage; ?>);" 
                             data-desktop="<?php echo $srcImage; ?>" 
                             data-mobile="<?php echo $srcImage; ?>">                                
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="content container-fluid container">
        <section class="component component-coloured-text lined sixty-thirty lined" style="background-color: #ffffff;" data-txt-colour=#000000 data-bg-colour=#ffffff>
            <div class="row">
                <div class="inner">
                    <h2 class="title">Interior Design Studio Philosophy</h2>
                    <div class="content">
                        <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                        </p>
                        <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                        </p>
                        <p>
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div class="content container-fluid container">
        <section class="component component-coloured-text sixty-thirty articles" style="background-color: #ffffff;" data-txt-colour=#000000 data-bg-colour=#ffffff>
            <div class="row">
                <?php foreach($articles as $item){?>
                <div class="col-md-4">
                    <div class="content">
                        <div class="image jpg">
                            <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($item->ID)); ?>" alt="image">
                        </div>
                        <p class="title"><?php echo $item->post_title;?></p>
                        <p><?php echo format_string(strip_tags($item->post_content), 150); ?></p>  
                        <div class="d-flex">
                            <span class="date-time">
                                <?php echo date('d M, Y', strtotime($item->post_date)); ?>
                            </span>
                            <span class="read-more">
                                Readmore
                            </span>
                        </div>
                    </div>
                </div>
                <?php }?>
            </div>
        </section>
    </div>

    <div class="component layout negative-margin pnp-bg">
        <div class="content container-fluid">
            <div class="row">
                <div class="col-12 equalise">
                    <section class="component component-form -contact_form_standard">
                        <div class="row no-gutter">
                            <div class="col-xs-12 text-container">
                                <h2 class="heading heading2">
                                    Mọi chi tiết xin vui lòng liên hệ
                                </h2>
                                <div class="content"></div>
                            </div>
                            <div class=" col-xs-12 form-container pnp-bg">
                                <div role="form">
                                    <div class="screen-reader-response"></div>
                                    <form action="#" method="post" class="frmContact" novalidate="novalidate">
                                        <div>
                                            <input type="text" name="your-name" size="40" class="wpcf7-form-control" aria-required="true" aria-invalid="false" placeholder="Name*" />
                                        </div>  
                                        <div>       
                                            <input type="tel" name="your-number" class="wpcf7-form-control" placeholder="Phone Number*" />
                                        </div>
                                        <div>
                                            <input type="email" name="your-email" class="wpcf7-form-control" placeholder="Email Address*" />
                                        </div>
                                        <div>
                                            <textarea name="message" cols="40" rows="4" class="wpcf7-form-control" placeholder="Message"></textarea>    
                                        </div>                                            <div>
                                            <button type="submit" class="wpcf7-form-control wpcf7-submit">Submit</button>                     
                                        </div>               

                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <?php get_template_part('template-parts/block/banner-footer', ''); ?>
</div>
<?php get_footer(); ?>
