<?php
/*    Template Name: Về chúng tôi
 * The template for displaying Về chúng tôi
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
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
        <div class="captions-full">
            <ul>
                <li class="cell active">
                    <div class="inner" data-link="#">
                        <div class="caption smoothstate no-cta">
                            <div class="subtitle">
                                <span><?php echo get_the_title();?></span>                                
                            </div>
                            <h4><?php echo $titleHead ;?></h4>
                            <p><?php echo $description;?></p>
                            <button class="loadpage in"><span>Đọc thêm</span></button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="component layout negative-margin pnp-bg">
        <div class="content container-fluid">
            <div class="row no-gutter full-width-layout">
                <div class="col-md-12">
                    <section class="component component-coloured-text lined sixty-thirty lined brand-color" style="background-color: #1b1b1e;" data-txt-colour=#ffffff data-bg-colour=#1b1b1e>
                        <div class="row">
                            <div class="col-md-8 equate no-content">
                                <div class="inner no-caption">
                                    <div class="content"></div>
                                </div>
                            </div>
                            <div class="col-md-4 equate">
                                <div class="line" style="background-color: #ffffff;"></div>
                                <div class="inner">
                                    <?php
				while ( have_posts() ) : the_post();
				   the_content();
				 endwhile;
				?> 	
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="component layout negative-margin pnp-bg">
        <div class="content container-fluid">
            <div class="row no-gutter full-width-layout">
                <div class="col-md-12">
                    <section class="component component-coloured-text lined sixty-thirty lined" style="background-color: #ffffff;" data-txt-colour=#000000 data-bg-colour=#ffffff>
                        <div class="row">
                            <div class="col-md-8 equate">
                                <div class="inner no-caption">
                                    <div class="content">
                                        <div class="image jpg">
                                            <img src="<?php echo get_template_directory_uri(); ?>/images/about-2.png" alt="image"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="inner">
                                    <h2 class="title">Interior Design Studio Philosophy</h2>
                                    <div class="content">
                                        <p>Great design should last, rather than follow fashion or trends. Maintaining a creative vision that spans architecture to interiors and bespoke furniture design, our quality of work is defined by a refined and timeless style. Design Matters.</p>
                                        <p>The creation of space in the context of its environment is at the forefront of our studio ethos. We believe that architecture and design is for people, and as such, great sensitivity is given to understanding how thoughtful design can enhance people’s lives.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            
            <div class="row no-gutter full-width-layout">
                <div class="col-md-12">
                    <section class="component component-coloured-text lined sixty-thirty lined" style="background-color: #ffffff;" data-txt-colour=#000000 data-bg-colour=#ffffff>
                        <div class="row">
                            <div class="col-md-8 equate">
                                <div class="inner no-caption">
                                    <div class="content">
                                        <div class="image jpg">
                                            <img src="<?php echo get_template_directory_uri(); ?>/images/about-3.png" alt="image"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="inner">
                                    <h2 class="title">Interior Design Studio Philosophy</h2>
                                    <div class="content">
                                        <p>Great design should last, rather than follow fashion or trends. Maintaining a creative vision that spans architecture to interiors and bespoke furniture design, our quality of work is defined by a refined and timeless style. Design Matters.</p>
                                        <p>The creation of space in the context of its environment is at the forefront of our studio ethos. We believe that architecture and design is for people, and as such, great sensitivity is given to understanding how thoughtful design can enhance people’s lives.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
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
