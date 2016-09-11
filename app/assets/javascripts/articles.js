$(document).ready(function() {
    var $commentForm = $("#comment-form");

    $commentForm.hide();

    $("#toggle-comment-form").click(function (event) {
        event.preventDefault();

        var $link = $(this);

        if ($commentForm.is(':visible')) {
            $commentForm.hide();
            $link.html("Add new comment");
        } else {
            $commentForm.show();
            $link.html("Hide new comment");
        }
    });
});
