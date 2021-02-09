<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>자이언트솔루션</title>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script>
	var action = '${tbAlias}';
	$(function() {
		$("#searchTxt").val('${searchTxt.searchTxt}');

		var loginChk = '${adminLogin}';

		if (loginChk != null || loginChk != '') {
			$("#writeHref").show();
		}
	})

	function goPage(num) {
		$("#pageNo").val(num);
		$("#searchFrm").attr("action", action).attr("method", "post").submit();
	}

	function goSearch() {
		$("#searchFrm").attr("action", action).attr("method", "post").submit();
	}
	
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

<body marginwidth="0" marginheight="0">
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
												<td><img  id ="titleimg" src="resources/images/ceo/title1.gif"
													width="275" height="50" border="0" align="absmiddle" alt=""></td>
												<td align="right" valign="bottom"
													style="font-size: 11px; font-family: dotum; color: #757575">홈
													&gt; <b id="subtitle">회사소개 </b>&gt; <b id="sub">CEO인사말</b>
												</td>
											</tr>
											<tr>
												<td colspan="2" height="1" bgcolor="#e5e5e5"></td>
											</tr>
										</tbody>
									</table> <br> <br>
									<img  id="topimg" src="" alt="표시불가">
									<div id="contents">
										<div>
											<table class="table">
												<tr>
													<th>번호</th>
													<th>제목</th>
													<th>이름</th>
													<th>날짜</th>
													<th>조회수</th>
												</tr>
												<c:choose>
													<c:when test="${empty list }">
														<td colspan="5" height="40">등록된 게시물이 없습니다.</td>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list }" var="list">
															<tr>
																<td>${list.RNUM }</td>
																<td><a href="detail?seq=${list.SEQ}">${list.SUBJECT }</a></td>
																<td>${list.NAME }</td>
																<td><fmt:formatDate value="${list.REGDATE }"
																		pattern="yyyy-MM-dd" /></td>
																<td>${list.VIEWCNT }</td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</table>
										</div>
										<div>
											<form name="searchFrm" id="searchFrm">
												<b>검색어</b>&nbsp;&nbsp; <input type="text" name="searchTxt"
													id="searchTxt" placeholder="제목으로 검색하세요."> <input
													type="hidden" name="pageNo" id="pageNo" value="1">
												<input type="hidden" name="listSize" id="listSize"
													value="15"> <a href="javascript:goSearch()"><img
													src="/resources/images/img_searchBtn.PNG" alt="버튼"
													height="30"></a>
												<c:if test="${pageMap.curBlock > 1}">
													<a href="javascript:goPage('1')">[처음]</a>
												</c:if>
												<c:if test="${pageMap.curBlock > 1}">
													<a href="javascript:goPage('${pageMap.prevPage}')">[이전]</a>
												</c:if>
												<c:forEach var="num" begin="${pageMap.blockBegin}"
													end="${pageMap.blockEnd}">
													<c:choose>
														<c:when test="${num == pageMap.curPage}">
															<span style="color: red">${num}</span>&nbsp;
									                        </c:when>
														<c:otherwise>
															<a href="javascript:goPage('${num}')">${num}</a>&nbsp;
									                        </c:otherwise>
													</c:choose>
												</c:forEach>
												<c:if test="${pageMap.curBlock <= pageMap.totBlock}">
													<a href="javascript:goPage('${pageMap.nextPage}')">[다음]</a>
												</c:if>
												<c:if test="${pageMap.curPage <= pageMap.totPage}">
													<a href="javascript:goPage('${pageMap.totPage}')">[끝]</a>
												</c:if>
												<a id="writeHref" style="display: none"
													href="write?boardType=${boardType }"><img
													src="/resources/images/img_regBtn.PNG" alt="글쓰기"
													height="30"></a>
											</form>
										</div>
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
																<td valign="top" width="250" align="left">
																  <img src="resources/images/main/logo_foot.png" style="vertical-align:middle;border:0;" alt=""></a>
																</td>
																<td align="left"
																	style="padding: 0 0 0 5px; font-size: 11px; color: #808080">
																	<a href="/shop_info/agree.htm"><font
																		href="/shop_info/privacy.htm"><font
																			color="#808080">개인정보취급방침</font></a> &nbsp;&nbsp; <a
																	href="javascript:no_email()"><font color="#808080">이메일무단수집거부</font></a>
																	&nbsp;&nbsp; <a
																	href="/shop_contents/myreg_form.htm?myreg_code=jehu">
																		<font color="#808080">제휴문의</font>
																</a> <br> <%String address=(String)session.getAttribute("ADDRESS");%>
																		<%=address%>
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
