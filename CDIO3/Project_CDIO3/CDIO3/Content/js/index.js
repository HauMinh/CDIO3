

window.onload = function () {
  $("resume").onclick = function() {
    $("cv").classList.add("slideInTop")
  }

    $(".scroll").click(function scrolling() {
        if (window.scrollY > 0) {
            setTimeout(function() {
                window.scrollTo(0, window.scrollY - 30);
                scrolling();
            }, 6);
        };
    });

});
}


