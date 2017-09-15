$(document).ready(function(){
    $(".grid").isotope({ layout: "masonry" });

    $("#reloadPage").click(function() {
        location.reload();
    });
});
