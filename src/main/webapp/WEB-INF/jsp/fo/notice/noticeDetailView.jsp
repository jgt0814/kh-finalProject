<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>

    <jsp:include page="/WEB-INF/jsp/fo/common/common.jsp"/>

 <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="https://kenwheeler.github.io/slick/slick/slick-theme.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <style>
        /* ---------------------------------- */



        /* 공지사항 */
        table {
        border-collapse: collapse;
        width: 100%;
        }

        td, th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
        }

        #boardtext {
        background-color:#ffffff;
        border: solid 0.1rem #19a7ce;
        border-radius: 0.7rem;
        color: #19a7ce;
        font-family : Roboto, 'Source Sans Pro';
        font-size: 1.2rem;
        font-weight: 500;
        line-height: 1.1725;
        text-align: center;
        }

        .auto-group-t8bp-ei9 {
        align-items:  center;
        flex-shrink:  0;
        height : 4.6rem;
        margin-bottom: 11.9rem;
        width: 100%;
        }

        .btn-group { float: right; }

        #QZWUheUHEXEqWaaaEWt8BP {
        background-color: #19a7ce;
        box-shadow: 0 0.4rem 0.4rem rgba(0, 0, 0, 0.25);
        color: #ffffff;
        display: flex;
        font-size: 1.2rem;
        font-weight: 400;
        line-height: 1.2125;
        white-space: nowrap;
        width: 36.4rem;
        }


	/*-------------  버튼 스타일 ---------------*/

		#page {
		  text-align: center;
		  display: inline-flex;
		  align-items: center;
		  justify-content: space-around
		}
		.page_btn {
		  align-items: center;
		}
		.pagination {
		  list-style: none;
		  padding: 0;
		  margin-top: 20px;
		}
		.pagination li {
		  display: inline;
		  text-align: center;
		}
		/* 숫자들에 대한 스타일 지정 */
		.pagination a {
		  float: left;
		  display: block;
		  font-size: 14px;
		  text-decoration: none;
		  padding: 5px 12px;
		  color: #797979;
		  line-height: 1.5;
		}
		.first { margin-right: 15px; }
		.last { margin-left: 15px; }
		.first:hover, .last:hover, .arrow_left:hover, .arrow_right:hover {
		  color: #146C94;
		}
		.pagination a:active {
		  cursor: default;
		  color: #69ABCE;
		}
		.pagination a:active {
		  outline: none;
		}
		.num {
		  margin-left: 3px;
		  padding: 0;
		  width: 30px;
		  -moz-border-radius: 100%;
		  -webkit-border-radius: 100%;
		  border-radius: 100%;
		}
		.num:hover {
		  background-color: #146C94;
		  color: #FFFFFF;
		}
		.num:active, .modal .num:active {
		  background-color: #69ABCE;
		  cursor: pointer;
		}

		.title{
            width : 250px;
            height : 70px;
            margin : 30px 0px 0px 15px;
            box-sizing : border-box;
            align-items : center;
            display : flex;
        }

           .bar {
            width : 12px;
            height : 70px;
            background-color : #146C94;
        }

         .title_text{
            width : 200px;
            height : 50px;
            font-size : 40px;
            font-weight : bold;
            padding : 0px 0px 7px 10px;
        }

    </style>
</head>
<body>


<jsp:include page="/WEB-INF/jsp/fo/common/header.jsp"/>



    <div id="container">

        		<!-- 배너 -->
				<div class="title_all" style="padding-top: 50px; padding-bottom: 25px">
				<div class="title">
                <div class="bar"></div>
                <div class="title_text">공지사항</div>
				</div>
				</div>


        <!-- 공지사항 -->
        <div class="board">


                <br/>


                     <div>
            <table>
                <thead>
                <div>
                    <tr>
                        <th colspan="8"><br>
                            <h3 style="text-align: center;">배송 및 운영관련 공지사항 게시판입니다.</h3> <br><br>
                            <div class="jumbotron" style="user-select: auto;">
                                <h5><strong>공지사항</strong> ${ b.noticeTitle }</h5> <hr>
                                <div><h6><strong>작성일자</strong> ${b.noticeDate}</h6></div> <hr>
                                <p class="lead" style="user-select: auto;"> ${ b.noticeContent }
                                </p><br><br>

                                <hr>



                              </div>

							<div class="boDetailBtn">
							<c:if test="${ (not empty loginUser) and (loginUser.memberId eq 'admin') }">
							<div class="deletBtn">
                            <span class="btn-group"> <!-- 버튼 관련 class -->
                                <p class="lead" >
                                <button class="btn btn-success" id="btn_modify"  onclick="postFormSubmit(1)">수정</button>
                                    <button class="btn btn-danger" id="btn_delete" onclick="postFormSubmit(2)">삭제</button>
                                </p>
                            </div>

                            <form id="postForm" action="" method="post">
                            	<input type="hidden" name="bno" value="${b.noticeNo}">
                            </form>
                            <script>
                            	function postFormSubmit(num) {

                            		if(num == 1) {
            	            			$("#postForm").attr("action", "updateForm.no").submit();
            	            		} else {
            	            			$("#postForm").attr("action", "delete.no").submit();
            	            		}
            	            	}
                            </script>
                              </c:if>
                            <div class="listBtn">
                                <p class="lead">
                                <a class="btn btn-primary" href="list.no" role="button"  id="btn_previous">목록</a>
                                </p>
                            </span>
                            </div>
                           </div>
                    </tr>
                </div>
                </thead>
            </table>




    </div>
   </div>

   </div>

   <script>
  (function(){var w=window;if(w.ChannelIO){return w.console.error("ChannelIO script included twice.");}var ch=function(){ch.c(arguments);};ch.q=[];ch.c=function(args){ch.q.push(args);};w.ChannelIO=ch;function l(){if(w.ChannelIOInitialized){return;}w.ChannelIOInitialized=true;var s=document.createElement("script");s.type="text/javascript";s.async=true;s.src="https://cdn.channel.io/plugin/ch-plugin-web.js";var x=document.getElementsByTagName("script")[0];if(x.parentNode){x.parentNode.insertBefore(s,x);}}if(document.readyState==="complete"){l();}else{w.addEventListener("DOMContentLoaded",l);w.addEventListener("load",l);}})();

  ChannelIO('boot', {
    "pluginKey": "8094ae3e-4590-4830-854a-710d02743bc2"
  });
</script>
          <jsp:include page="/WEB-INF/jsp/fo/common/footer.jsp"/>






</body>
</html>