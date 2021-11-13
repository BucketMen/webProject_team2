<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css" />
    
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <title>Homepage</title>
  </head>
   <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  <body style="width: 1200px; margin: 0 auto;">
   
    <!-- header End ------------------------------------------------------------------------------------------------------------------ -->
    
    <main>
    
      <div id="card">
            <div class="card" onclick="location.href='border.html'" style=" width: 18rem; margin: 10px;">
                    <img src="images/s1.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">오늘의 패션</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
                <div class="card" style=" width: 18rem; margin: 10px;">
                    <img src="images/s1.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
                <div class="card" style=" width: 18rem; margin: 10px;">
                    <img src="images/s1.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
                <div class="card" style=" width: 18rem; margin: 10px;">
                    <img src="images/s1.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
            </div>
        </div>

      <article id="mainboard">
          <section class="mainsection">
              <table  class="table table-striped homeborderleft">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div>
                            <i class="far fa-clock"></i>
                            <a href="/border" style="text-decoration: none; color: black;">최근 게시글</a>
                            </div>
                          <div><a href="border.html" id="more"> 더보기</a></div>
                      </th>
                      
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>[핫딜 게시판] </a>
                          <a href="borderdtl.html">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>[핫딜 게시판] </a>
                      <a href="/border">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>[핫딜 게시판] </a>
                          <a href="/border">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>
      
          <section class="mainsection">
              <table   class="table table-striped">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div>
                            <i class="fas fa-fire"></i>
                              <a href="#" style="text-decoration: none; color: black;">인기 게시글</a>
                            </div>
                          <div><a href="#" id="more"> 더보기</a></div>
                      </th>
                      <!-- 타이틀을 클릭하면 게시판으로 이동합니다, 댓글수를 기준으로 정렬합니다-->
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>
      </article>
      
      <hr>
      
      <article id="mainboard">
          <section class="mainsection">
              <table   class="table table-striped homeborderleft">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div><a href="border.html" style="text-decoration: none; color: black;">핫딜 게시판</a> </div>
                          <div><a href="border.html" id="more"> 더보기</a></div>
                      </th>
                      
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>
      
          <section  class="mainsection">
              <table   class="table table-striped">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div><a href="#" style="text-decoration: none; color: black;">자유게시판</a> </div>
                          <div><a href="#" id="more"> 더보기</a></div>
                      </th>
                      <!-- 타이틀을 클릭하면 게시판으로 이동합니다 -->
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>
      </article>

      <article id="mainboard">
          <section class="mainsection">
              <table  class="table table-striped homeborderleft">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div><a href="#" style="text-decoration: none; color: black;">공지사항</a> </div>
                          <div><a href="#" id="more"> 더보기</a></div>
                      </th>
                      
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>

          <section  class="mainsection">
              <table  class="table table-striped">
                  <tr>
                      <th id="boardtitle" class="border-sub-title">
                          <div><a href="#" style="text-decoration: none; color: black;">건의사항</a> </div>
                          <div><a href="#" id="more"> 더보기</a></div>
                      </th>
                      <!-- 타이틀을 클릭하면 게시판으로 이동합니다 -->
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                      <a>게시판 종류 | </a>
                      <a href="#">css 기초 다지기1 | </a>
                      <span>5</span>
                  </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>[게시판 종류] | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
                  <tr>
                      <td id="tableline">
                          <a>게시판 종류 | </a>
                          <a href="#">css 기초 다지기1 | </a>
                          <span>5</span>
                      </td>
                  </tr>
              </table>
          </section>
      </article>
  
  </main>
    <!-- main End ------------------------------------------------------------------------------------------------------------------ -->

    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	
    <!-- Optional JavaScript; choose one of the two! -->
	
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <script src="/js/header.js"></script>
    
  </body>
</html>