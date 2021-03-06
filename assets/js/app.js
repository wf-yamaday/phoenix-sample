// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import 'vuetify/dist/vuetify.min.css' // Ensure you are using css-loader
// import "phoenix_html"
import "./src/main.js";

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"
// import Vue from 'vue';
// import App from './App.vue';

// new Vue(App).$mount('#app');