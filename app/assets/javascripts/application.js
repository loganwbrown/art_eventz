// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require fullcalendar
//= require nivo-lightbox.js


//= require_tree .
$(function() {
    $("#event_date").datepicker();
    $('#calendar').fullCalendar();



    // $('.carousel').carousel({
    //     interval: 3000


    $('.slider a').nivoLightbox({
        effect: 'fade', // The effect to use when showing the lightbox
        theme: 'default', // The lightbox theme to use
        keyboardNav: true, // Enable/Disable keyboard navigation (left/right/escape)
        clickOverlayToClose: true, // If false clicking the "close" button will be the only way to close the lightbox
        onInit: function() {}, // Callback when lightbox has loaded
        beforeShowLightbox: function() {}, // Callback before the lightbox is shown
        afterShowLightbox: function(lightbox) {}, // Callback after the lightbox is shown
        beforeHideLightbox: function() {}, // Callback before the lightbox is hidden
        afterHideLightbox: function() {}, // Callback after the lightbox is hidden
        onPrev: function(element) {}, // Callback when the lightbox gallery goes to previous item
        onNext: function(element) {}, // Callback when the lightbox gallery goes to next item
        errorMessage: 'The requested content cannot be loaded. Please try again later.' // Error message when content can't be loaded
    });




});