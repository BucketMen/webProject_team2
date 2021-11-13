<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/borderinsert.css" />
    
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <title>KoreaDeal</title>
  </head>
  <body style="width: 1200px; margin: 0 auto;">
    <header>
         <nav class="navbar navbar-expand-lg navbar-light bg-light navbar navbar-dark bg-dark" style="height: 60px;">
            <div class="container-fluid">
              <a class="navbar-brand" href="home.html" style="margin-left: 10px; font-size: x-large;"><i class="fas fa-kiwi-bird"></i> Korea's Deal</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="margin: 0px 20px 0px 20px;">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ì ì²´ê¸
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                            <li><a class="dropdown-item" href="border.html">ì ì²´ê¸</a></li>
                            <li><a class="dropdown-item" href="border.html">êµ­ë´ í«ë</a></li>
                            <li><a class="dropdown-item" href="border.html">í´ì¸ í«ë</a></li>
                            <li><a class="dropdown-item" href="border.html">ìì  ê²ìí</a></li>
                            <li><a class="dropdown-item" href="border.html">ì§ë¬¸ ê²ìí</a></li>
                            <li><a class="dropdown-item" href="border.html">ì ì  ê°¤ë¬ë¦¬</a></li>
                            <li><a class="dropdown-item" href="border.html">ê³µì§ì¬í­</a></li>
                            <li><a class="dropdown-item" href="border.html">ê±´ì | ë¬¸ìì¬í­</a></li>
                        </ul>
                    </li> 

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        í«ë ê³µì  ê²ìí
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="border.html">êµ­ë´ í«ë</a></li>
                        <li><a class="dropdown-item" href="border.html">í´ì¸ í«ë</a></li>
                    </li> 
                </ul>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="border.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ì ì ê²ìí
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="gallaryBorder.html">ìì  ê²ìí</a></li>
                        <li><a class="dropdown-item" href="border.html">ì§ë¬¸ ê²ìí</a></li>
                        <li><a class="dropdown-item" href="gallaryBorder.html">ì ì  ê°¤ë¬ë¦¬</a></li>
                    </ul> 
                </li> 

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    ì´ìê´ë¦¬
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown"  style="width: 100px;">
                        <li><a class="dropdown-item" href="border.html">ê³µì§ì¬í­</a></li>
                        <li><a class="dropdown-item" href="border.html">ê±´ì | ë¬¸ìì¬í­</a></li>
                        <li><a class="dropdown-item" href="border.html">ì¬ì´í¸ ìê°</a></li>
                    </ul> 
                </li> 

                <li class="nav-item" style="display: flex;">
                    <a class="nav-link active" aria-current="page" href="login.html">ë¡ê·¸ì¸</a>
                    <span class="nav-link active" style="padding-left: 0px; padding-right: 0px;">|</span>
                    <a class="nav-link active" aria-current="page" href="join.html">íìê°ì</a>
                </li>
                
               
                
            </ul>
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
    
              </div>
            </div>
          </nav> 
    </header>
    <!-- header End ------------------------------------------------------------------------------------------------------------------ -->
    <main>
        <div id="insertcontainer">
          
          <form id ="borderinsertform" method="post" action="/borderdatainsert">
            <select name="category" id="selectcategory">
              <option value="korea">êµ­ë´í«ë</option>
              <option value="global">í´ì¸í«ë</option>
            </select>

            <div><input type="text" id="titleinsert"  name="border_title" placeholder="ì ëª©ì ìë ¥íì¸ì" ></div><hr>
            <div>ìì±ì : ${loginUserBean.user_name}</div>
            <input type="hidden" name ="user_name" value="${loginUserBean.user_name}">
            <div id="linkarea">
              <div id="linkname">êµ¬ë§¤ë§í¬</div>
              <input type="text" id="linkbox" placeholder="ì¬ê¸°ì ë§í¬ë¥¼ ìë ¥í´ì£¼ì¸ì ( https:// í¹ì http://ë¥¼ ê°ì´ ìë ¥íì¬ì¼ í©ëë¤ )">
            </div>
            <div id="linkarea">
              <div id="linkname" style="padding-top: 15px;">ì£¼ìì¬í­</div>
              <textarea name="content_textarea" id="linkbox" placeholder="ì¬ê¸°ì ë´ì©ì ìë ¥í´ì£¼ì¸ì"></textarea>
            </div>
            
            
            <div id="contentinsert" ><textarea name="" style="width: 100%; height: 30em;" placeholder="ì¬ê¸°ì ë³¸ë¬¸ì ìë ¥í´ì£¼ì¸ì"></textarea></div>
            <div style="display: flex; justify-content: space-between;"> 
              <input type="button" value="ì¬ì§ì¶ê°">
              <inpur type ="hidden" id ="submitFlag" name="submitFlag" value="false">
              <input type="submit" id ="insertButton" value="ê²ìê¸ ìì±" style="background-color: tomato; border-radius: 3px;">
               <input type="submit" id="reset" value="ë¤ì ìì±" style="background-color: tomato; border-radius: 3px;">
            </div>
         </form>
           
        </div>
      </main>
    <!-- main End ------------------------------------------------------------------------------------------------------------------ -->

            <footer>
	<div id="foot">
		<!-- ì´ë¦, ì°ë½ì², ì£¼ì, ì´ë©ì¼ -->
		<ul>
			<li></li>
			<li id="slash">|</li>
			<li>ì¹íë¡ì í¸ 5ì¡°</li>
			<li id="slash">|</li>
			<li>íì: ìí¨í,ì ê·ì,ì´ì§ì,ì ì°ê°</li>
			<li id="slash">|</li>
			<li>ì£¼ì: ë¶ì° ëì </li>
			<li id="slash">|</li>
			<li>contect-us@kakao.com</li>
		</ul>
	</div>
</footer>
		
    <!-- Optional JavaScript; choose one of the two! -->
    <script src="/js/borderInsert.js"></script>
    <script>
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
    </script>

    
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    
  </body>
</html>