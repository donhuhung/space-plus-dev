<header id="page-header">
    <div class="desktop-slider_overlay mobile-slider_overlay">
        <nav class="nav-container nav-height display-table-xs" id="desktop-nav">
            <div>
                <a class="image" href="/">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="" class=""/>
                    <div class="project">
                        <span class="case"> <?php echo get_the_title();?></span>
                    </div>
                </a>                        
                <div class="burger-container">
                    <div class="language">
                        <a href="#">VI</a>
                        <span> | </span>
                        <a href="#">EN</a>                                
                    </div>
                    <button class="navbar-toggle navbar-toggle-overlay burger" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <i></i>
                    </button>
                    <!--<button class="view-toggle">
                            <span class="slider-icon"></span></button>-->
                </div>
                <div class="overlay-menu">
                    <div class="side-menu-veil pnp-toggle-mob-nav" id="side-menu-veil"></div>
                    <div class="side-menu-container" id="side-menu-container">
                        <div class="main menu-wrapper">
                            <ul class="text-menu">
                                <?php
                                $active = '';
                                if (is_home()) {
                                    // code for home page goes here
                                    $active = 'active';
                                }
                                ?>    
                                <?php
                                clean_custom_menu("primary");
                                ?>                     
                            </ul>
                        </div>
                        <div class="submenu menu-wrapper first">
                            <div class="inner">
                                <div class="line"></div>  
                                <?php
                                clean_menu_child(52, "primary");
                                ?> 
                            </div>
                        </div>
                        <div class="submenu menu-wrapper second">
                            <div class="inner">
                                <div class="line"></div> 
                                <?php
                                clean_menu_child(46, "primary");
                                ?> 
                            </div>
                        </div>
                    </div>
                    <div class="social">
                        <ul>                                    
                            <li>
                                <a href="https://www.instagram.com/minaleandmann_/?hl=en" target="_blank">
                                    <img src="<?php echo get_template_directory_uri(); ?>/images/facebook.png" alt=""/>
                                </a>
                            </li>   
                            <li>
                                <a href="https://www.instagram.com/minaleandmann_/?hl=en" target="_blank">
                                    <img src="<?php echo get_template_directory_uri(); ?>/images/youtube.png" alt=""/>
                                </a>
                            </li>                                    
                        </ul>
                    </div>
                    <div class="mobile-close"></div>
                </div>
            </div>
        </nav>
    </div>
</header>
<div class="mm-close">
    <i class="ion-ios-close-empty"></i>
</div>
<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/start.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/start.php.js"></script>