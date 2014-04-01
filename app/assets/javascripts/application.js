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
//= require jquery-nivo-slider
//= require_tree .





// jQuery('input[type="date"]').live('click', function(e) {e.preventDefault();}).datepicker();


$(function() {
    $("#event_date").datepicker();

    // make ajax request to a controller
    // get back an array of events in json format (format.json)
    // store in a variable
    // use that variable for the value of the events key

    if ($('#calendar').length > 0) {
        $.getJSON('/calendar', function(data) {


            $('#calendar').fullCalendar({
                events: data,
            });
        })
    }


    $(window).load(function() {
        $('#slider').nivoSlider({
            effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 4000 // How long each slide will show


        });


    });
});