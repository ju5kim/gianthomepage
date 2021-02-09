<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CEO인사말</title>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script>
$(function(){
	var boardType = "${tbAlias}";
	if(boardType == "qna"){
		$("#title").text("Q&A");
		$("#sub").text("Q&A");
		$("#subtitle").text("고객센터");
		$("#titleimg").attr("src","resources/images/qna/qnatitle.gif");
		$("#topimg").attr("src","resources/images/qna/qnatop.jpg")
		
	}if(boardType == "board"){
		$("#title").text("자유게시판");
		$("#sub").text("자유게시판");
		$("#subtitle").text("커뮤니티");
		$("#titleimg").attr("src","resources/images/board/boardtitle.gif");
		$("#topimg").attr("src","resources/images/board/boardtop.jpg")
		
	}if(boardType == "perform"){
		$("#title").text("사업실적");
		$("#sub").text("사업실적");
		$("#subtitle").text("사업소개");
		$("#titleimg").attr("src","resources/images/per/producttitle.gif");
		$("#topimg").attr("src","resources/images/per/perform.png");
		
	}if(boardType == "recruit"){
		$("#title").text("입사지원");
		$("#sub").text("입사지원");
		$("#subtitle").text("채용정보");
		$("#titleimg").attr("src","resources/images/rcu/RCUtitle.gif");
		$("#topimg").attr("src","resources/images/rcu/topimg.jpg")
		
	}if(boardType == "news"){
		$("#title").text("업계소식");
		$("#sub").text("업계소식");
		$("#subtitle").text("커뮤니티");
		$("#titleimg").attr("src","resources/images/news/newstitle.gif");
		$("#topimg").attr("src","resources/images/news/newstop.jpg")
		
	}if(boardType == "notice"){
		$("#title").text("공지사항");
		$("#sub").text("공지사항");
		$("#subtitle").text("고객센터");
		$("#titleimg").attr("src","resources/images/notice/noticetitle.gif");
		$("#topimg").attr("src","resources/images/notice/noticetop.jpg")
		
	}if(boardType == "faq"){
		$("#title").text("FAQ");
		$("#sub").text("FAQ");
		$("#subtitle").text("고객센터");
		$("#titleimg").attr("src","resources/images/faq/faqtitle.gif");
		$("#topimg").attr("src","resources/images/faq/faqtop.jpg")
	}
	
})	
</script>
</head>

<body oncontextmenu="return false" marginwidth="0" marginheight="0">
	<!----------- 배경화면 시작 ----------->
	<!------------- 배경화면 끝 ------------->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td valign="top" align="center"
					style="background-image: url(resources/images/main/main_bg2.jpg); background-position: top center; background-repeat: no-repeat">

					<table width="1000" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr align="left">
								<td width="250" valign="top" align="left"
									style="padding: 30px 0 0 0"><a href="/"> <img
										src="resources/images/main/logo_top1.png"
										style="vertical-align: middle; border: 0;" alt=""></a> <br>
									<br>
									<div>
										-회사소개
										<ul>
											<li><a href="/ceoMent">CEO인사말</a></li>
											<li><a href="/companyHistory">회사연혁</a></li>
											<li><a href="/companyGroup">조직도</a></li>
											<li><a href="/companyAdress">찾아오시는길</a></li>
											<!-- (지도API) -->
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
									</div> <!-- 		<div style="height:90px;width:0"></div> --> <br> <a
									href="/bbs_shop/list.htm?board_code=sub3_2"> <img
										src="resources/images/main/-.jpg" width="170" height="55"
										style="vertical-align: middle; border: 0;" alt=""></a><br>
									<a href="/bbs_shop/list.htm?board_code=sub3_1"> <img
										src="resources/images/main/-1.jpg" width="170" height="55"
										style="vertical-align: middle; border: 0;" alt=""></a>
									<div style="height: 80px; width: 0"></div></td>
								<td valign="top" width="750">

									<table wdith="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td height="15"></td>
											</tr>
											<tr>
												<td style="font-size: 11px" valign="top" height="100">
													<div style="position: relative">
														<div style="position: absolute; top: -90px; left: 440px">
															<img src="resources/images/ceo/ceobg.png" width="380"
																height="185" border="0" align="absmiddle" alt=""
																class="png24">
														</div>
													</div>

												</td>
											</tr>
										</tbody>
									</table> <!---------------- 타이틀부분 ------------------------>
									<table width="750" border="0" cellspacing="0" celllpadding="0">
										<tbody>
											<tr>
												<td><img src="resources/images/ceo/title1.gif"
													width="275" height="50" border="0" align="absmiddle" alt=""></td>
												<td align="right" valign="bottom"
													style="font-size: 11px; font-family: dotum; color: #757575">홈
													&gt; 회사소개 &gt; <b>CEO인사말</b>
												</td>
											</tr>
											<tr>
												<td colspan="2" height="1" bgcolor="#e5e5e5"></td>
											</tr>
										</tbody>
									</table> <br> <br>
									<div id="contents">
										<table border="1">
											<tr>
												<td id="title"></td>
												<td><span id="subject">${detailMap.SUBJECT }</span></td>
											</tr>
											<tr>
												<td>${detailMap.NAME }</td>
												<td>${detailMap.VIEWCNT }</td>
											</tr>
											<tr>
												<td colspan="2"><span id="content">${detailMap.CONTENT }</span></td>
											</tr>
											<tr>
												<td colspan="2">
													<a href = "updateView?seq=${detailMap.SEQ }"><img src="" alt="수정"></a> 
													<a><img src="" alt="목록"></a>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<div style="height: 50px; width: 0"></div>

					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="70" bgcolor="#000000" valign="top" align="center">

									<table width="1000" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr align="left">
												<td valign="top">
													<!------------------- 메인하단 -------------------------->
													<table width="1000" border="0" cellspacing="0"
														cellpadding="0" align="center">
														<tbody>
															<tr>
																<td valign="top" width="250" align="left"><a
																	href="/"><img
																		src="/img_up/shop_pds/gsolution/site_content/logo_foot.png"
																		style="vertical-align: middle; border: 0;" alt=""></a></td>
																<td align="left"
																	style="padding: 0 0 0 5px; font-size: 11px; color: #808080">
																	<a href="/shop_info/agree.htm"><font
																		color="#808080">이용약관</font></a> &nbsp;&nbsp; <a
																	href="/shop_info/privacy.htm"><font color="#808080">개인정보취급방침</font></a>
																	&nbsp;&nbsp; <a href="javascript:no_email()"><font
																		color="#808080">이메일무단수집거부</font></a> &nbsp;&nbsp; <a
																	href="/shop_contents/myreg_form.htm?myreg_code=jehu"><font
																		color="#808080">제휴문의</font></a><br> 서울특별시 금천구 가산디지털1로
																	168 우림라이온스밸리 A동 6층 606호 &nbsp;&nbsp; TEL: 02.2038.4626
																	&nbsp;&nbsp; E-mail : giantsolution@giantsolution.co.kr<br>
																	COPYRIGHT (c) 자이언트솔루션 company. All rights reserved.
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>

								</td>
							</tr>
						</tbody>
					</table>

				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
