$(document).ready(function() {
    function disableIfNotAttending(checkbox) {
        if(checkbox.checked) {
            $(".attending-only").prop("disabled", false);
        } else {
            $(".attending-only").prop("disabled", "disabled");
        }
    }

    disableIfNotAttending($("#attending-checkbox")[0]);

    $("#attending-checkbox").change(function() {
        disableIfNotAttending(this);
    });
});
