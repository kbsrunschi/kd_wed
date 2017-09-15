$(document).ready(function(){
    var state = {};
    var current_url = window.location.href;

    function activify(obj) {
        $("#secondary-menu li").removeClass("active");
        obj.addClass("active");
    }

    function setActiveNav() {
        var hash = window.location.hash;
        if (hash) {
            var active = $("#secondary-menu li a[href='" + window.location.hash + "']");
            activify(active.parent());
        }
    }

    setActiveNav();

    $('#secondary-menu li a').on('click', function() {
        activify($(this).parent());

        var href = $(this).attr("href");
        var url = document.createElement('a');
        url.href = window.location.href;

        if (url.hash != href) {
            history.pushState(state, "foo", href);
        }

        var width = window.innerWidth;
        var offset;
        if (width < 768) {
            offset = 100;
        } else {
            offset = 166;
        }

        $('html,body').animate({scrollTop: $(href).offset().top}, 600);
        return false;
    });
});
