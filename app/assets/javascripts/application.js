//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require twitter/bootstrap
//= require fullcalendar
//= require_tree .
$(function() {
    $("#event_date").datepicker();
    $('#calendar').fullCalendar();
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
});