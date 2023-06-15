<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <link rel="stylesheet" href="../css/custom.css" />
 <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>infomation</title>
 <style>
  .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {display: none;
     width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
  .img{
   width : 40%;
   height: auto;
   margin: auto;
   display: inline-block;
   left: 0%;
   position: relative;
  }
  .titlebox{
   width:40%;
   margin: auto;
   display: inline-block;
   left:100%;
   font-size: 30px;
   position: relative;
  }
  .infobox{
    display: block;
    background: #50627F;
    color: #fff;
    text-align: center;
    height: 24px;
    line-height:18px;
    border-radius:4px;
    padding:0px 10px;
  }
  .butt {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  }
 </style>
</head>
<body>
 
 <div class="bg-top" style="background-color: #FFD2D7">
  <!-- 메뉴바 ---------------------------------------------------------------------------------------------------- -->
  <div class="bg-header">
      <div class="container">
          <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-3 mycustom-header">
              <a href="#" class="d-flex align-items-center col-md-2 mb-2 mb-md-0 text-dark text-decoration-none">
              </a>

              <ul class="nav col-12 col-md-auto justify-content-center mb-md-0">
              <li><a href="/" class="nav-link px-3 link-secondary" style="color: #212529!important;">관광지</a></li>
              <li><a href="festival" class="nav-link px-3 link-dark" style="color: #6c757d!important;">축제/공연</a></li>
              <li><a href="sports" class="nav-link px-3 link-dark">레저</a></li>
              </ul>

              <div class="col-md-3 text-end">
              <button type="button" class="btn btn-outline-success me-2 mycustom-mem-btn">로그인</button>
              <button type="button" class="btn btn-outline-success mycustom-mem-btn">회원가입</button>
              </div>
          </header>
      </div>
  </div>
  <!-- 메뉴바 끝 -------------------------------------------------------------------------------------------------- -->
 <!-- <div class=".container">
  <div class="img"><img src="../test1.jpg" id="img"><div>
  <div class="titlebox">제목영역</div>
 </div> -->
 <div class="container px-4 px-lg-5">
  <!-- Heading Row-->
  <div class="row gx-4 gx-lg-5 align-items-center my-5">
      <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="${ifoVO.firstimage}" alt="..." /></div>
      <div class="col-lg-5">
          <h1 class="font-weight-light">${ifoVO.title}</h1>
          <p><h4>${ifoVO.addr1}</h4></p>
          <p><h4>${ifoVO.tel}</h4></p>
          <!--<a class="btn btn-primary" href="#!">Call to Action!</a>-->
      </div>
  </div>
  <!-- Content Row-->
  <div >
   <h1>사용자 리뷰</h1>
   <div>리뷰 게시판 들어갈 곳</div>
  </div>
   <div class="col-md-4 mb-5" id="map" style="width:800px;height:500px;"></div>
  </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
 <script src="js/scripts.js"></script>
 
 <script>
  $( function() {
    $( "#map" ).dialog({
     autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "fadeOut",
        duration: 400
      },
      minWidth: 800,
      minHeight:800
    });
 
    $( "#btn-thd" ).on( "click", function() {
      $( "#map" ).dialog( "open");
    });
  } );
  </script>
 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b64121064fac6d582b95caba86d1124d&libraries=services"></script>
 <script>
  
  var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${ifoVO.mapY}, ${ifoVO.mapX}),
			level: 4
		};
		var map = new kakao.maps.Map(container, options);
  var position = options.center

// 마커를 생성합니다
 var marker = new kakao.maps.Marker({
  position: position,
  clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
 });

  marker.setMap(map);
   //map.setCenter(cords);
   // style 강제 적용
   // 클래스가 marker인 요소들 모두 찾아내기
   // let marker_ar = document.querySelectorAll(".infobox")
   
   // marker_ar.forEach(function(e){
   //  // 검색된 요소들의 수만큼 반복되는 함수
   //  let w = e.offsetWith + 10;
   //  let ml = w/2;
   //  e.parentElement.style.top = "80px";
   //  e.parentElement.style.marginLeft = -ml+"px";
   //  e.parentElement.style.width = w+"px";
   //  e.parentElement.previousElementSibling.style.display="none";
   //  e.parentElement.parentElement.style.border="0px";
   //  e.parentElement.style.left="50%";
   // });
   //인포윈도우를 생성하고 장소에 대한 설명을 지도에 표시합니다

   

  
 marker.setMap(map);
 </script>

  
  <script>
   let marker_ar = document.querySelectorAll(".infobox")
   
    marker_ar.forEach(function(e){
    var w = e.offsetWidth + 10;
    var ml = w/2;
    e.parentElement.style.top = "82px";
    e.parentElement.style.left = "50%";
    e.parentElement.style.marginLeft = -ml+"px";
    e.parentElement.style.width = w+"px";
    e.parentElement.previousSibling.style.display = "none";
    e.parentElement.parentElement.style.border = "0px";
    e.parentElement.parentElement.style.background = "unset";
    });
  </script>
</body>
</html>