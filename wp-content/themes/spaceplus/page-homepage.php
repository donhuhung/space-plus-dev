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
    'order' => 'ASC',
    'category' => '',
    'category_name' => '',
    'include' => '',
    'exclude' => '',
    'post_type' => 'banner',
    'post_status' => 'publish',
    'suppress_filters' => true
);
$banners = get_posts($args);
?>  
        <div class="container-fluid" id="wrapper">
            <div class="component slider-nav" id="sliderNav">
                <div class="slider-wrapper">
                    <ul class="slides" style="width: 1400vw; transform: translateX(-650vw);">
                        <li class="cell  active">
                            <div class="inner" data-link="#">
                                <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-13.jpg);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-13.jpg" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/11.-Cannon-Place-Mobile-Banner.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>design matters</p> <span>London Design Studio</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Services">
                            <div class="inner" data-link="https://minaleandmann.com/residential-architects/">
                                <div class="background video" data-video="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_02.mp4" data-poster="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_02-1600x1068.jpg" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_02-1600x1068.jpg);" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/3.-Broomwood-Mobile-Banner.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Architectural Design</p> <span>Residential</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Services">
                            <div class="inner" data-link="https://minaleandmann.com/commercial-architects/">
                                <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-New-Size-11.jpg);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-New-Size-11.jpg" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/x1.-Archway-69-Mobile-Banner-A.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Architectural Design</p> <span>Commercial</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Services">
                            <div class="inner" data-link="https://minaleandmann.com/planning-applications/">
                                <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/02/6.-Planning-Archway-img-10.jpg);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/02/6.-Planning-Archway-img-10.jpg" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/1a-Archway-69-Mobile-Planning-NEW.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Planning Applications</p> <span>Residential</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Services">
                            <div class="inner" data-link="https://minaleandmann.com/residential-interior-design/">
                                <div class="background video" data-video="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_05.mp4" data-poster="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_05-1600x887.jpg" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_05-1600x887.jpg);" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/4.-No-40-Mobile-Banner.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Interior Design</p> <span>Residential</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Services">
                            <div class="inner" data-link="https://minaleandmann.com/commercial-interior-designers/">
                                <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-New-Size-15.jpg);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/04/1-New-Size-15.jpg" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/2.-Wig-Factory-Mobile-Banner-B.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Interior Design</p> <span>Commercial</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="About">
                            <div class="inner" data-link="https://minaleandmann.com/about/">
                                <div class="background video" data-video="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_10.mp4" data-poster="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_10-810x1080.jpg" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/slide_10-810x1080.jpg);" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/2a.-Between-the-Commons-USE-ANIMATION-FILE.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Minale + Mann</p> <span>About</span></div>
                            </div>
                        </li>
                        <li class="cell  active" data-section="Contact">
                            <div class="inner" data-link="https://minaleandmann.com/contact/">
                                <div class="background" style="background-image: url(https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/9-2.jpg);" data-desktop="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/9-2.jpg" data-mobile="https://minale-and-mann-plugandplaydesig.netdna-ssl.com/wp-content/uploads/2018/05/1b-Archway-69-Mobile-Contract-NEW.jpg"></div>
                            </div>
                            <div class="append">
                                <div class="inner">
                                    <p>Contact</p> <span>Contact</span></div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="captions-full">
                    <ul>
                        <li class="cell  active">
                            <div class="inner" data-link="#">
                                <div class="caption smoothstate no-cta">
                                    <div class="subtitle">
                                        <span>London Design Studio</span>
                                        <h1 class="seo-title">Architecture and Interior Design Studio London</h1></div>
                                    <h4>design matters</h4>
                                    <p>Minale + Mann is an award winning architectural and interior design studio based in London.</p>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/residential-architects/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Residential</span>
                                        <div class="seo-title">Residential Architects London</div>
                                    </div>
                                    <h4>Architectural Design</h4>
                                    <p>The most important material with which we design, is light.</p>
                                    <button class="loadpage in"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/commercial-architects/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Commercial</span>
                                        <div class="seo-title">Commercial Architects</div>
                                    </div>
                                    <h4>Architectural Design</h4>
                                    <p>Design is about a way of living, be it at home, in the workplace, relaxing, or entertaining. It is our duty as designers to enhance and encourage social interaction through good design.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/planning-applications/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Residential</span>
                                        <div class="seo-title">Planning Applications</div>
                                    </div>
                                    <h4>Planning Applications</h4>
                                    <button class="loadpage"><span>Read more</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/residential-interior-design/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Residential</span>
                                        <div class="seo-title">Residential Interior Design London</div>
                                    </div>
                                    <h4>Interior Design</h4>
                                    <p>We aspire to create an interior experience that is both memorable, and timeless.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/commercial-interior-designers/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Commercial</span>
                                        <div class="seo-title">Commercial Interior Designers</div>
                                    </div>
                                    <h4>Interior Design</h4>
                                    <p>As architects and designers it is important to focus on the experience of the space we find ourselves, as much as it is concerned with the aesthetic.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/conservation-architects/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Residential</span>
                                        <div class="seo-title">Conservation Architects London</div>
                                    </div>
                                    <h4>Conservation & Heritage Design</h4>
                                    <p>Conservation Architects to transform your heritage property.</p>
                                    <button class="loadpage"><span>Read more</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/residential-architectural-design-services/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Residential</span>
                                        <div class="seo-title">Residential Architectural Design Services</div>
                                    </div>
                                    <h4>Create & Construct</h4>
                                    <p>Whether a new build project, or transforming a home through renovation or refurbishment; we take the ordinary and elevate to the extraordinary.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/commercial-design-and-build/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Commercial</span>
                                        <div class="seo-title">Commercial Design and Build Company</div>
                                    </div>
                                    <h4>Create & Construct</h4>
                                    <p>Whether a new build project, or transforming a home through renovation or refurbishment; we take the ordinary and elevate to the extraordinary.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/about/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>About</span>
                                        <div class="seo-title">architecture and interior design studio</div>
                                    </div>
                                    <h4>Minale + Mann</h4>
                                    <p>At Minale + Mann we believe that ‘Design Matters’.</p>
                                    <button class="loadpage"><span>Read More</span></button>
                                </div>
                            </div>
                        </li>
                        <li class="cell  active">
                            <div class="inner" data-link="https://minaleandmann.com/contact/">
                                <div class="caption smoothstate">
                                    <div class="subtitle">
                                        <span>Contact</span>
                                        <div class="seo-title">Contact</div>
                                    </div>
                                    <h4>Contact</h4>
                                    <p>Contact us and let us know about your project, or find out more about our award winning services.</p>
                                    <button class="loadpage"><span>Get in touch</span></button>
                                </div>
                            </div>
                        </li>
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
