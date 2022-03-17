const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

//  Original
// mix.js('resources/js/app.js', 'public/js')
//     .postCss('resources/css/app.css', 'public/css', [
//         //
//     ]);


mix.js('resources/js/app.js', 'public/js')
    .sass('resources/scss/app.scss', 'public/css')
    .sass('resources/scss/index.scss', 'public/css')
    .sass('resources/scss/print.scss', 'public/css');
    // mix.sass('resources/sass/app.sass', 'public/css')
    // .sass('resources/sass/admin.sass', 'public/css/admin');
