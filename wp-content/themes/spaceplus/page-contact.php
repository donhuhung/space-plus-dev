<?php
/*    Template Name: Liên hệ
 * The template for displaying Contact
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
?>  
<div class="container-fluid" id="wrapper">
    <div class="component slider-nav" id="sliderNav">
        <div class="slider-wrapper">
            <ul class="slides">
                <li class="cell active" data-section="Contact">
                    <div class="inner" data-link="https://minaleandmann.com/contact/">
                        <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/9-2.jpg?x63270);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/9-2.jpg?x63270" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/1b-Archway-69-Mobile-Contract-NEW.jpg?x63270"></div>
                    </div>
                    <div class="append">
                        <div class="inner">
                            <p>Contact</p> 
                            <span>Contact</span>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="captions-full">
            <ul>
                <li class="cell  active">
                    <div class="inner" data-link="https://minaleandmann.com/contact/">
                        <div class="caption smoothstate">
                            <div class="subtitle">
                                <span>Contact</span>
                                <h1 class="seo-title">Contact</h1></div>
                            <h4>Contact</h4>
                            <p>Contact us and let us know about your project, or find out more about our award winning services.</p>
                            <button class="loadpage"><span>Get in touch</span></button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
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
    <?php get_template_part('template-parts/block/banner-footer', ''); ?>    
</div>
<?php get_footer(); ?>
