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
    <link rel="stylesheet" href="css/border.css" />
    
    <script src="https://kit.fontawesome.com/c3df4d7d1c.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <title>KoreaDeal</title>
  </head>
  <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
  <body style="width: 1200px; margin: 0 auto;">
    
    <!-- header End ------------------------------------------------------------------------------------------------------------------ -->
    <main>
        <article class="border_contain">
            
            <c:choose>
                <c:when test="${empty loginUserBean }">
                    <c:set var="display" value="none"></c:set>
                </c:when>
                <c:otherwise>
                    <c:set var="display" value="flex"></c:set>
                </c:otherwise>
            </c:choose>
            

            <div class="border_body">
                

                <div class="border_insert_button" >
                    <div class="border_header"><i class="fas fa-shopping-basket"></i> 세일정보</div>
                    <div><button onclick="location.href='borderinsert.html'">글쓰기</button></div>
                </div>

                <table class="border_table">
                    <tr class="row_header">
                        <th class="border_index">번호</th>
                        <th class="border_title">제목</th>
                        <th class="border_writer">작성자</th>
                        <th class="border_date">작성일</th>
                        <th class="border_count">조회수</th> 
                    </tr>
                    <c:forEach var = "bean" items="${borderModel.borderList }">
                    <tr>
                        <td class="border_index">${bean.border_code }</td>
                        <td class="border_title" id="titleset"><a href="borderdtl?border_code=${bean.border_code }&page=${borderModel.page}">${bean.border_title }</a>;
                            <div class="imgtitle"><img src="images/s1.png" id="borderimg"/></div>
                            <div class="imgtitle"><a href="borderdtl.html">첫번째 게시글</a></div>
                            <div class="imgtitle" style="color: blue;">5</div>
                        </td>
                        <td class="border_writer">${bean.writer_name }</td>
                        <td class="border_date">${bean.border_date }</td>
                        <td class="border_count">${bean.border_count }</td>
                    </tr>
                    </c:forEach>
                    
                </table>
            </div>
            
        </article>
            <div class="border_footer">
                <div class="this_page">
                    <span>${borderModel.page }</span> / <span>${borderModel.totalPage }</span> pages
                  
                </div>
                <div class="select_page">
                    <span><a href=borderp?page=${borderModel.pageStart - 1 eq 0 ? 1 : borderModel.pageStart - 1}><i class="fas fa-angle-left"></i></a></span>
                   
                    <c:forEach var="i" begin="${borderModel.pageStart }" end="${borderModel.pageEnd }">
                        <span><a href=borderp?page=${i}>${i }</a></span>
                    </c:forEach>
                    
                    <span><a href=borderp?page=${borderModel.pageEnd eq borderModel.totalPage ? borderModel.pageEnd : borderModel.pageEnd+1 }><i class="fas fa-angle-right"></i></a></span>

                </div>

                <div class="search">
                    <form method="get" action="borderSearch">
                        <select name="searchFilter">
                            <option value="all">전체</option>
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                            <option value="writer">작성자</option>
                        </select>
                        <input type="search" name="border_search"> <button type="submit">검색</button>
                    </form>
                </div>
                
            </div>
        </main>
    <!-- main End ------------------------------------------------------------------------------------------------------------------ -->

    <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

    <!-- Optional JavaScript; choose one of the two! -->
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