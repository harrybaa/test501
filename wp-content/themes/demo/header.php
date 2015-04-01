<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the 'site-content' div.
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/17
 */
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset='<?php bloginfo( "charset" ); ?>'>
  <meta name='viewport' content='width=device-width'>
  <script>(function(){document.documentElement.className='js'})();</script>
  <script type="text/javascript" src='<?php bloginfo('template_url'); ?>/js/jquery-1.11.2.min.js'></script>
  <!-- css reset -->
  <link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url') ?>/style.css">
  <!-- 每个页面不同的css文件 -->
  <?php if ( is_home() ) { ?>
  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/home.css"
  type="text/css" media="screen" />
  <?php } else if( is_page() ) { ?>
  <!-- subjects页面与index页面很多元素相同，重复使用home.css -->
  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/home.css" type="text/css" media="screen"/>
  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/subjects.css" type="text/css" media="screen"/>
  <?php } else if( is_single() ) { ?>
  <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/single.css" type="text/css" media="screen"/>
  <?php } ?>
</head>

<body>
<div id='main' class='site'>

  <header id='masthead' class='header' role='header'>
    <div class='header-wrapper'>
      <div class='logo left'>
        <span>百药通LOGO</span>
      </div><!-- .site-branding -->

      <div class='login-block right'>
        <a href='#'>登录</a>
        |
        <a href='#'>注册</a>
      </div>

      <div class='login-info hide right'>
        <a href="#" class='login-name'>E123456</a>
        <a href="#" class='login-help'>帮助</a>
        <a href="#" class='login-setting'>设置</a>
      </div>
    </div>
  </header><!-- .site-header -->

  <div id='content' class='site-content'>
