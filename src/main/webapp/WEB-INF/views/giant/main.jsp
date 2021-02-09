<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script>

function imagebtn(){
		location.href="/fileUploadForm";
}
function logoutbtn(){
	location.href="/logout";
}
</script>

</head>
<body>
<body oncontextmenu="return false" marginwidth="0" marginheight="0"><!----------- 배경화면 시작 ----------->
<!------------- 배경화면 끝 ------------->


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody><tr>
    <td valign="top" align="center" style="background-image:url(resources/images/main/main_bg2.jpg);background-position:top center;background-repeat:no-repeat">

<table width="1000" border="0" cellspacing="0" cellpadding="0">
    <tbody><tr align="left">
       <td width="250" valign="top" align="left" style="padding:30px 0 0 0">
		<a href="/"><img src="resources/images/main/logo_top1.png" style="vertical-align:middle;border:0;" alt=""></a>		<br><br>
	<div>     
	-회사소개                                                                                    
	<ul>                                                                                      
		<li><a href="/ceoMent">CEO인사말</a></li>
		<li><a href="/companyHistory">회사연혁</a></li>
		<li><a href="/companyGroup">조직도</a></li>
		<li><a href="/companyAdress">찾아오시는길</a></li><!-- (지도API) -->
	</ul>
	- 사업소개
	<ul>
		<li><a href="/pro">사업소개</a></li>
		<li><a href="/perform">사업실적</a></li>
	</ul>
	- 채용정보
	<ul>
		<li><a href="/rcu">채용안내</a></li>
		<li><a href="/recruit">입사지원</a></li>
	</ul>
	-커뮤니티
	<ul>
		<li><a href="/news">업계소식</a></li>
		<li><a href="/board">자유게시판</a></li>
	</ul>
	-고객센터
	<ul>
		<li><a href="/notice">공지사항</a></li>
		<li><a href="/faq">FAQ</a></li>
		<li><a href="/qna">Q&amp;A</a></li>
	</ul>
</div>	
		
		<div style="height:90px;width:0"></div>
			<table width="210" border="0" cellspacing="0" cellpadding="0">
			<tbody>
			
			
			</tbody></table>
	
                                <br>
                               <a href="/bbs_shop/list.htm?board_code=sub3_2">
                               <img src="resources/images/main/-.jpg" width="170" height="55" style="vertical-align:middle;border:0;" alt=""></a><br><a href="/bbs_shop/list.htm?board_code=sub3_1">
                               <img src="resources/images/main/-1.jpg" width="170" height="55" style="vertical-align:middle;border:0;" alt=""></a>
                                <div style="height:80px;width:0"></div>  
		</td>
		<td valign="top" width="750">

     
        
        <br>
<div id="contents">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>

<td valign="top" style="padding:85px 0 35px 0" height="500">
<div style="position:relative">
<div style="position:absolute;top:-85px;left:310px">
 
<img src="resources/images/main/main_text.png" width="420" height="130" style="vertical-align:middle;border:0;" alt=""></div>
 		<% String adminsession = (String)session.getAttribute("adminLogin");
 		
 	if(adminsession == null||!adminsession.equals("adminLogin")){
	 }else{
%>
	 <button style="width:100px;height:50px;" onclick="imagebtn()">이미지 편집
	 </button>
	 <button style="width:100px;height:50px;" onclick="logoutbtn()">로그아웃</button>
<% 	 	 
 }
%>
<div style="position:absolute;top:290px;left:520px"><a href="/bbs_shop/list.htm?board_code=sub3_2">
<img src="resources/images/main/main_customer.png" width="230" height="230" style="vertical-align:middle;border:0;" alt=""></a></div>
</div>
<img src="resources/images/main/main_image.jpg" width="750" height="530" style="vertical-align:middle;border:0;" alt=""></td></tr>
</tbody></table>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tbody><tr>
  <td width="225" valign="top">

<!----------- News & Notice ----------->
<script>
function main_middle_chk(num){                                
		if(num == 1){
				main_middle_div1.style.display='';
				main_middle_div2.style.display='none';
		}else{
				main_middle_div1.style.display='none';
				main_middle_div2.style.display='';
		}
}
</script>

<!-- ------------------------------------------탭1 -------------------------------------------------------- -->


<!-- ------------------------------------------탭2 -------------------------------------------------------- -->
<div id="main_middle_div2" style="display:none;">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody><tr>
	
	</tr>
	<tr> 
	  <td valign="top" style="padding:5px 0 0 0"> 
		<table width="100%" "border="0" cellspacing="0">
		  <tbody><tr> 
			<td valign="top">
                                                   <!--출력수 : 반드시 2자리 입력-->
 <!-- 게시판 코드를 입력해주세요. 대소문자 구분. 빈공란 입력시 게시판 전체를 가져 옵니다.-->
 <!-- 게시판 서브 카테고리 IDX 값을 입력해주세요.-->
 <!--  [커뮤니티 》 게시판 관리 》 게시물 메인출력 관리]에서 등록한 그룹 코드를 입력해주세요. -->
 <!--정렬 방식 :  기본정렬(DEFAULT), 조회수순(VIEW), 덧글수순(COMMENT) 랜덤(RAND) -->

 <!-- 검색컬럼명|검색어 형식으로 입력 예1) SEARCH=필드명|원하는검색어     예2)  SEARCH=TOTAL|GET 으로 설정 후 접속주소를 /shop_add_page/index.htm?page_code=code&all_search=검색어 -->
 <!-- 검색컬럼명|검색어 형식으로 입력 예1) SEARCH2=필드명|원하는검색어     예2)  SEARCH2=TOTAL|GET 으로 설정 후 접속주소를 /shop_add_page/index.htm?page_code=code&all_search2=검색어 -->
 <!-- 검색컬럼명|검색어 형식으로 입력 예1) SEARCH3=필드명|원하는검색어     예2)  SEARCH3=TOTAL|GET 으로 설정 후 접속주소를 /shop_add_page/index.htm?page_code=code&all_search3=검색어 -->

<script type="text/javascript">
				var script_new_list;

				var idx_arr = new Array();
				var url_list_arr = new Array();
				var url_read_arr = new Array();
				var board_title_arr = new Array();
				var img_url_arr = new Array();
				var subject_arr = new Array();
				var comment_cnt_arr = new Array();
				var reg_date_arr = new Array();
				var content_arr = new Array();
				var write_name_arr = new Array();
				var view_count_arr = new Array();
				var reply_icon_arr = new Array();
				var new_icon_arr = new Array();
				var not_img_arr = new Array();
				var secret_arr = new Array();
				var first_subject_arr = new Array();
				var chu_count_arr = new Array();
				var cate_title_arr = new Array();

				var script_new_list = "";
							

				var idx;
				var url_list;
				var url_read;
				var board_title;
				var img_url;
				var subject;
				var comment_cnt;
				var reg_date;
				var content;
				var write_name;
				var view_count;
				var reply_icon;
				var new_icon;
				var not_img;
				var secret;
				var first_subject;
				var chu_count;
				var cate_title;

				</script> <!--  게시판 출력 프로그램 실행 -->
                  </td>
		  </tr>
		</tbody></table>
	  </td>
	</tr>
	</tbody></table>
</div>
		

 </tr>
</tbody></table>
 </tbody></table>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody>
  <tr>
   <td height="70" bgcolor="#000000" valign="top" align="center">
     <table width="1000" border="0" cellspacing="0" cellpadding="0">
       <tbody><tr align="left"><td valign="top">

          <!------------------- 메인하단 -------------------------->
           <table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
   <tbody><tr>
     <td valign="top" width="250" align="left"><a href="/">
    <img src="resources/images/main/logo_foot.png" style="vertical-align:middle;border:0;" alt=""></a></td>
     <td align="left" style="padding:0 0 0 5px;font-size:11px;color:#808080">
<a href="/shop_info/agree.htm"><font color="#808080">이용약관</font></a>  &nbsp;&nbsp;  
<a href="/shop_info/privacy.htm"><font color="#808080">개인정보취급방침</font></a>  &nbsp;&nbsp; 
<a href="javascript:no_email()"><font color="#808080">이메일무단수집거부</font></a>   &nbsp;&nbsp;  
<a href="/shop_contents/myreg_form.htm?myreg_code=jehu">
<font color="#808080">제휴문의</font></a><br>
<%String address=(String)session.getAttribute("ADDRESS");%>
<%=address%>
COPYRIGHT (c) 자이언트솔루션 company. All rights reserved.
    </td>
    </tr>
   </tbody></table>
      </td></tr>
    </tbody></table>

    </td></tr>
</tbody></table>

    </td>
  </tr>
</tbody></table>
		<script type="text/javascript">
		setTimeout("create_iframe(0,'ok_frame');",100);
		setTimeout("create_iframe(0,'ok_frame2');",100);
		</script>
		<script type="text/javascript" src="http://chk101.ai-log.biz/etc/connect_ai_save.php?ai_log_user_key=&amp;ai_log_first_key=&amp;ai_log_count_key=&amp;ai_log_account_id=gsolution&amp;ai_log_mem_id=&amp;ai_log_mobile_web_yn=0&amp;ai_log_mobile_conn_yn=0&amp;ai_log_app_conn_yn=0&amp;ai_log_referer_cookie=&amp;ai_log_referer_this=http%3A//www.giantsolution.co.kr/&amp;ai_log_full_url=http%3A//gsolution.waplez.net/&amp;ai_log_page_title=%EC%9E%90%EC%9D%B4%EC%96%B8%ED%8A%B8%EC%86%94%EB%A3%A8%EC%85%98%20%2F%20GIANT%20SOLUTION&amp;ai_log_page_url=/main&amp;rand_num=583919"></script><iframe id="ok_frame" name="ok_frame" title="ok_frame" style="width: 0px; height: 0px; display: none;"></iframe><iframe id="ok_frame2" name="ok_frame2" title="ok_frame2" style="width: 0px; height: 0px; display: none;"></iframe></body>
</body>
</html>