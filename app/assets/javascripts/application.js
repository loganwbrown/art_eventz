//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require fullcalendar
//= require jquery.share
//= require jquery-nivo-slider
//= require_tree .
// jQuery('input[type="date"]').live('click', function(e) {e.preventDefault();}).datepicker();
$(function() {
    $("#event_date").datepicker();
    $('#calendar').fullCalendar();
    $(window).load(function() {
        $('#slider').nivoSlider({
            effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 4000 
        });
    });
 $('#mydiv').share({
        networks: ['pinterest', 'tumblr', 'googleplus', 'digg', 'in1', 'facebook', 'twitter', 'linkedin', 'stumbleupon'],
        theme: 'square'
    });
});