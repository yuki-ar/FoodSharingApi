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

// window.returnAdress = function () {
//   arrayAdress = []
//   $(".shop_item-p").each(function () {
//     arrayAdress.push($(this).text())
//   })
//   return arrayAdress
// }
window.sendDistanceText = function () {
  $(".shop_item-p").each(function (index) {
    // var adress = { [index]: $(this).data('adress') }
    var adress = JSON.stringify({ [index]: $(this).data('adress') })
    distance = window.webkit.messageHandlers.distance.postMessage(adress)
    $(this).text()
  })
}

window.scrollTop = function () {
  window.scrollTo(0, 0);
}


window.onload = function () {
  returnTitle();
}

window.onload = function () {
  sendDistanceText();
}