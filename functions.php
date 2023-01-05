<?php
/**
 * @author  Pressbooks <code@pressbooks.com>
 * @license GPLv3 (or any later version)
 */

function donham_theme_setup() {
    add_theme_support( 'pressbooks_global_typography', 'grc', 'he' );
}

add_action( 'after_setup_theme', 'donham_theme_setup' );

add_filter( 'pb_is_shape_shifter_compatible', '__return_true' );
