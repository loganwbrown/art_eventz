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
    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function(){
        readURL(this);
    });

    $('#socialsharing').share({
        networks: ['facebook', 'googleplus', 'twitter'],
        theme: 'square'
    });
});