$(function(){

    $('.gnb > li').mouseover(function(){
         $('.sub').stop().slideDown();
  
    }).mouseout(function(){
         $('.sub').stop().slideUp();
    });
  
  
  });
//   index의 헤더를 위한 JS코드

var mySwiper = new Swiper(".swiper-container", {
    loop: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

//swiper