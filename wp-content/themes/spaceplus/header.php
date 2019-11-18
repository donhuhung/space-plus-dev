<?php
/**

 * The template for displaying the header

 *

 * Displays all of the head element and everything up until the "site-content" div.

 *

 * @package WordPress

 * @subpackage Twenty_Sixteen

 * @since Twenty Sixteen 1.0

 */
$post_id = get_the_ID();
$post = get_post($post_id);
?>

<!DOCTYPE html>

<html>

    <head>

        <title><?php wp_title('|', true, 'right'); ?> Space Plus</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Cache-control" content="public">        

        <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css">

        <link rel='stylesheet' href='<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css' type='text/css' media='all' />
        <link rel='stylesheet' href='<?php echo get_template_directory_uri(); ?>/css/main.css' type='text/css' media='all' />        
        <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/images/favicon.png">                
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/jquery.min.js'></script>
        <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/system.js"></script>
        <script type='text/javascript'>
            var aws_data = {
                "rootUrl": "https:\/\/minaleandmann.com\/",
                "ids": "",
                "container_id": "content",
                "mcdc": "menu",
                "searchID": ".nav-container",
                "transition": "",
                "scrollTop": "",
                "loader": "",
                "bp_status": ""
            };
        </script>
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/modernizr.min.js'></script>
        <script>
            //if (/Android.+mobile|webOS|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) == false) {
            document.documentElement.className += " preload";
            //}
        </script>
    </head>

    <body class="home homepage">    
        <section class="component component-loading-screen -text">
            <div class="background">
                <div class="top"></div>
                <div class="bottom"></div>
            </div>
            <div class="inner">
                <p class="intro-text">
                <div class="minale-logo">
                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 269 141.8" style="enable-background:new 0 0 269 141.8;" xml:space="preserve">
                    <style type="text/css">
                        .st0 {
                            fill: #1b1b1e;
                        }
                    </style>
                    <g>
                    <g>
                    <polygon class="st0" points="269,94.5 237.4,0 237.4,0 221.6,0 221.6,0 197.8,71 174,0 174,0 158.3,0 158.3,0 134.5,71 110.7,0
                             110.7,0 95,0 95,0 71.2,71 47.4,0 47.4,0 31.7,0 31.7,0 0,94.5 15.7,94.5 39.5,23.4 63.3,94.5 63.4,94.5 79.1,94.5 79.1,94.5
                             102.9,23.4 126.7,94.5 126.7,94.5 142.4,94.5 142.4,94.5 166.2,23.4 190,94.5 190,94.5 205.7,94.5 205.7,94.5 229.5,23.4
                             253.3,94.5         " />
                    </g>
                    <g>
                    <path class="st0" d="M21.9,118v23.8h-2.2v-17.6l-8.8,12.2l-8.7-12.2v17.6H0V118h0.5l10.4,14.5L21.4,118H21.9z" />
                    <path class="st0" d="M30.8,141.8h-2.2V118h2.2V141.8z" />
                    <path class="st0" d="M38,118l15,18.3V118h2.2v23.8h-0.6l-15-18.2v18.2h-2.2V118H38z" />
                    <path class="st0" d="M72.1,118l11.4,23.8H81l-3.6-7.5H66l-3.6,7.5H60L71.4,118H72.1z M67.1,132.1h9.2l-4.6-9.6L67.1,132.1z" />
                    <path class="st0" d="M92.4,139.5h12.2v2.2H90.1V118h2.3V139.5z" />
                    <path class="st0" d="M113.7,120.2v8.6H126v2.2h-12.3v8.6H126v2.2h-14.6V118H126v2.2H113.7z" />
                    <path class="st0" d="M147.8,138.7v-7.9h-7.9v-1.9h7.9V121h1.9v7.9h7.9v1.9h-7.9v7.9H147.8z" />
                    <path class="st0" d="M193.6,118v23.8h-2.2v-17.6l-8.8,12.2l-8.7-12.2v17.6h-2.2V118h0.5l10.4,14.5L193,118H193.6z" />
                    <path class="st0" d="M210.4,118l11.4,23.8h-2.4l-3.6-7.5h-11.4l-3.6,7.5h-2.5l11.4-23.8H210.4z M205.4,132.1h9.2l-4.6-9.6
                          L205.4,132.1z" />
                    <path class="st0" d="M227,118l15,18.3V118h2.2v23.8h-0.6l-15-18.2v18.2h-2.2V118H227z" />
                    <path class="st0" d="M251.8,118l15,18.3V118h2.2v23.8h-0.6l-15-18.2v18.2h-2.2V118H251.8z" />
                    </g>
                    </g>
                    </svg>
                </div>
            </div>
        </section>