//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require fullcalendar
//= require jquery.share
//= require jquery-nivo-slider
//= require facebook
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
                eventClick: function(event) {
                    var id = event.id;
                    window.location = "/events/" + id;
                }
            });
        })
    }
    $(window).load(function() {
        $('.slider').nivoSlider({
            effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 4000
        });
    });



    //$('#myTabs a').click(function(e) {
    //    e.preventDefault();
    //    $("#show_art").tab("show");
    //    $("#show_art_events").tab("show");
    //});



    $('#socialsharing').share({
        networks: ['facebook', 'googleplus', 'twitter'],
        theme: 'square'
    });
});