let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.header .navbar');

menu.onclick = () => {
   menu.classList.toggle('fa-times');
   navbar.classList.toggle('active');
};

window.onscroll = () => {
   menu.classList.remove('fa-times');
   navbar.classList.remove('active');
};

var swiper = new Swiper(".my-slider", {
   loop: true,
   /*effect:"fade",*/
   navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
   },
   autoplay: {
      delay: 5000,
      disableOnInteraction: true,
   },
});

var swiper = new Swiper(".reviews-slider", {
   grabCursor: true,
   loop: true,
   autoHeight: true,
   spaceBetween: 20,
   breakpoints: {
      0: {
         slidesPerView: 1,
      },
      700: {
         slidesPerView: 2,
      },
      1000: {
         slidesPerView: 3,
      },
   },
   autoplay: {
      delay: 2000,
      disableOnInteraction: true,
   },
});

window.onbeforeunload = function () {
   window.scrollTo(0, 0);
}


let loadMoreBtn = document.querySelector('.packages .load-more .btn');
let currentItem = 3;
let count = 0;
loadMoreBtn.onclick = () => {
   let boxes = [...document.querySelectorAll('.packages .box-container .box')];

   if (count == 0) {
      for (var i = currentItem+3; i < currentItem + 6; i++) {
         boxes[i].style.display = 'inline-block';
      };
      currentItem += 6;
   }
   else {
      for (var i = currentItem; i < currentItem + 3; i++) {
         boxes[i].style.display = 'inline-block';
      };
      currentItem += 3;
   }
   count += 1;
   if (currentItem >= boxes.length) {
      loadMoreBtn.style.display = 'none';
   }
}