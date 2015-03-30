<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package: Wordpress 4.1
 * @author: wliu
 * Date: 2015/3/17
 */
?>

  </div><!-- .site-content -->

  <footer id="footer" class="footer" role="contentinfo">
    <div class="site-info">
      <a href="<?php echo esc_url( __( 'https://wordpress.org/', '' ) ); ?>"><?php printf( __( 'Proudly powered by %s', '' ), 'WordPress' ); ?></a>
    </div><!-- .site-info -->
  </footer><!-- .site-footer -->

</div><!-- .site -->

</body>
</html>