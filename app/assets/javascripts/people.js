$(window).load(function() {
   function resizePeople() {
       var people = $(".person");
       var heights = people.map(function() { return $(this).height(); }).get();
       var maxHeight = Math.max.apply(Math, heights);
       people.each(function() {
           $(this).parent().css("min-height", maxHeight);
       });
   }

   resizePeople();

   $(window).resize(function() {
       resizePeople();
   });
});
