$(document).ready(function() {
    setTimeout(function() {
        $('#flash_wrapper').fadeOut("slow", function() {
            this.remove();
        });
    }, 4500);
});
