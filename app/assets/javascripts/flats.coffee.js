document.addEventListener("turbolinks:load", function() {

    $("tr[data-link]").click(function() {
        window.location = $(this).data('link');
    });
    $("tr[data-link]").hover(function() {
        $(this).css("background-color", "#CFCFCF");
        $(this).css("cursor", "pointer");
    }, function() {
        $(this).css("background-color", "white");
    });
});
