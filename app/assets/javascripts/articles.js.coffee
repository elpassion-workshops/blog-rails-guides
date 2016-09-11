$ ->
  $commentForm = $("#comment-form")
  $commentForm.hide()

  $("#toggle-comment-form").click (event) ->
    event.preventDefault()

    $link = $(this)

    if $commentForm.is(':visible')
      $commentForm.hide()
      $link.html("Add new comment")
    else
      $commentForm.show()
      $link.html("Hide new comment")
