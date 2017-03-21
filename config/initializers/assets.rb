# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(
 style.css.scss
 blue.css
 bootstrap.min.css
 font-awesome.min.css
 awe-booking-font.css
 owl.carousel.css
 jquery-ui.css
 jquery-1.11.2.min.js
 masonry.pkgd.min.js
 jquery.parallax-1.1.3.js
 jquery.owl.carousel.js
 theia-sticky-sidebar.js
 jquery-ui.js
 scripts.js
)
