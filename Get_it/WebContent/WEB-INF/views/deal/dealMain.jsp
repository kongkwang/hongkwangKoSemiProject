<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중고거래 페이지</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/dealMain.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    
    <script>
        $(document).ready(function(){
          $(window).scroll(function(){
            var scroll = $(window).scrollTop();
            if (scroll > 1) {
              $("#nav_bar").css("background" , "white");
              $("#nav_bar").css("opacity" , "0.5");
              $("#nav_bar").css("color" , "black");
            }
            else{
              $("#nav_bar").css("background" , "white");
              $("#nav_bar").css("opacity" , "1");  
            }
          })
        })
    </script>
    
</head>
<body>
    <header>
        <div id="nav_bar">
            <div id="nav_bar_menu">
                <ul>
                    <li><a href="#">Recommend</a></li>
                    <li><a href="#">Self</a></li>
                    <li><a href="#">Other</a></li>
                    <li><a href="#">Used Deal</a></li>
                    <li><a href="#">Community</a></li>
                </ul>
            </div>
            <div id="nav_bar_logo">
                <a href="#">Assemble</a>
            </div>
            <div id="nav_bar_other">
                <div id="wrap">
                  <form action="" autocomplete="on">
                  <input id="search" name="search" type="text" placeholder="검색어를 입력하세요."><input id="search_submit" value="Rechercher" type="submit"> 
                  </form>
                </div>
                <div id="cart">
                    <a href="#" class="fas fa-shopping-cart fa-lg" style="color: black;"></a>
                </div>
                <div id="login">
                    <a href="#" class="fas fa-user fa-lg" style="color: black;"></a>
                </div>
            </div>
        </div>
    </header>
    <section>
        <div id="main_image">
        <img src="img/%EB%A9%94%EC%9D%B8.PNG" style="height: 100%;width:100%;">
        </div>
        <div id="section_title">
            <div id="section_title_main">
                <p>Used Deal</p>
            </div>
            <div id="wrap1">
                  <form action="" autocomplete="on">
                  <input id="search" name="search" type="text" placeholder="검색어를 입력하세요."><input id="search_submit" value="Rechercher" type="submit"> 
                  </form>
            </div>
            <div id="section_title_empty"></div>
        </div>
        <div id="empty_space"></div>
        <div id="section_contents">
            <c:forEach var="dList" items="${dList }" varStatus="status" begin="0" end="3">
				<div id="section_contents_inner">
	                <a href="/deal/select?dealNo=${deal.dealNo }" style="color:black;">
	                    <div class="card" style="width:20.6rem;">
	                      	<img src="img/${deal.dealFileName }" class="card-img-top" alt="...">
	                      <div class="card-body">
	                        <h5 class="card-title">${deal.dealTitle }</h5>
	                        <p class="card-text">${deal.dealPrice }</p>
	                      </div>
	                    </div>
	                </a>
	            </div>
				<c:if test="${status.index ne '3' }">
            		<div id="section_contents_inner_empty"></div> 
            	</c:if>
            </c:forEach>
        </div>
        <div id="empty_space"></div>
        <div id="empty_space"></div>
        <div id="section_contents">
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
        </div>
        <div id="empty_space"></div>
        <div id="empty_space"></div>
        <div id="section_contents">
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
            <div id="section_contents_inner_empty"></div>
            <div id="section_contents_inner">
                <a href="#" style="color:black;">
                    <div class="card" style="width: 20.6rem;">
                      <img src="img/ec3dafa6594854b21308197ad902fcb55cc0d48e949cc0c64bd9600b57200c58.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">램 4G 팝니다.</h5>
                        <p class="card-text">45,000원</p>
                      </div>
                    </div>
                </a>
            </div>
        </div>
        <div id="empty_space"></div>
        <div id="section_contents_bottom_empty"></div>
        <div id="section_contents_bottom">
                <nav aria-label="Page navigation example" id="section_contents_bottom_nav">
                  <ul class="pagination">
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                      </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                      </a>
                    </li>
                        <form action="/deal/writeform" method="post" style="margin-left: 34.5%;">
                            <button type="submit" class="btn btn-secondary" style="margin-top: 7%;">글쓰기</button>
                        </form>
                  </ul>
                </nav>
        </div>
        <div id="section_contents_bottom_empty"></div>
        <div id="empty_space1"></div>
    </section>
    <footer>
        <div id="empty_space2"></div>
        <div id="footer_icon">
            <h3>Assemble</h3>
        </div>
        <div id="footer_contents">
            <ul>
                <li>(주)어셈블</li>
                <li>대표이사: 노유진</li>
                <li>서울특별시 중구 남대문로 120 대일빌딩 2F,3F</li>
                <li>사업자등록번호: XXX-XX-XXXXXX</li>
                <li>COPYRIGHT © TENBYTEN ALL RIGHTS RESERVED.</li>
            </ul>
        </div>
        <div id="footer_icon">
            <div id="footer_icon_split">
                <i class="fas fa-headset fa-5x"></i>
            </div>
            <div id="footer_empty"></div>
            <div id="footer_icon_split">
                <i class="fas fa-money-check-alt fa-4x"></i>
            </div>
        </div>
        <div id="footer_contents">
            <div id="footer_contents1">
                <ul>
                    <li class="phone">02-1234-5678</li>
                    <li class="time">평일 09:00~18:00 / 점심시간 12:00~13:00</li>
                    <li class="notice">주말 및 공휴일은 휴무입니다.</li>
                </ul>
            </div>
            <div id="footer_empty"></div>
            <div id="footer_contents1">
                <ul>
                    <li class="account">국민은행 01234567-00-1234567</li>
                    <li class="account_holder">예금주: 노유진</li>
                </ul>
            </div>
        </div>
        <div id="empty_space2"></div>
    </footer>
</body>
</html>