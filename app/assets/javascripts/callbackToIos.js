$(function () {
  function backToIos(href) {
    iframe = $('<iframe />').attr('src', "callback://yuki.local:3000" + href)
    $('body').append(iframe)
    iframe.remove()
    iframe = null
  }

  $(".item_link").on("click", function(e){
    e.preventDefault();
    backToIos($(this).attr("href"))
    false
  })
  
});
window.returnTitle = function () {
  var iosTitle = document.getElementsByClassName("hiddenIosTitle")[0].innerText;
  return iosTitle;
}

window.scrollTop = function () {
  window.scrollTo(0, 0);
}

window.onload = function () {
  returnTitle();
}
