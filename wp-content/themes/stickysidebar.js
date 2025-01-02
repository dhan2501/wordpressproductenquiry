window.onscroll = function (e) {  

    var constantY = 300;
      var scrollTop = window.pageYOffset || (document.documentElement || document.body.parentNode || document.body).scrollTop;
    var sidebars = document.getElementsByClassName("sidebar");
    if (scrollTop > constantY) {
    sidebars[0].classList.add("sticky-panel");
    
    }
    else {
    sidebars[0].classList.remove("sticky-panel");
    }
    
      //console.log(window.pageYOffset || (document.documentElement || document.body.parentNode ||document.body).scrollTop);
    }