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
        <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/js/modernizr.min.js'></script>
        <script>
            //if (/Android.+mobile|webOS|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) == false) {
            document.documentElement.className = " preload";
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
                    <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" class="" alt="">
                </div>
            </div>
        </section>