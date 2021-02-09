<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
<script>
function fileChek(obj){
	pathpoint = obj.value.lastIndexOf('.');
	filepoint = obj.value.substring(pathpoint+1,obj.length);
	filetype = filepoint.toLowerCase();
	if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {
		// 정상적인 이미지 확장자 파일인 경우
	} else {
		alert('Only image file can be uploaded!');
		parentObj  = obj.parentNode
		node = parentObj.replaceChild(obj.cloneNode(true),obj);
		return false;
	}
}

//메인화면으로 이동
function mainbtn(){
	location.href="/"
}
</script>
</head>
<body>
<h1>이미지 변경</h1>
<form id="fileuploadform" action="/fileUpload" enctype="multipart/form-data" method="post" >
<hr>
CEO인사말 : <input type="file" id="CEO" name="CEO" accept="image/gif, image/jpeg, image/png" onchange="fileCheck(this)"> F_CEO_001
<hr>

회사연력 : <input type="file" id="HIS" name="HIS"accept="image/gif, image/jpeg, image/png" onchange="fileCheck(this)"> F_HIS_001
<hr>
조직도 : <input type="file" id="ORG" name="ORG"accept="image/gif, image/jpeg, image/png"onchange="fileCheck(this)">F_ORG_001
<hr>
찾아오시는길 : <input type="file" id="MAP" name="MAP"accept="image/gif, image/jpeg, image/png"onchange="fileCheck(this)">F_MAP_001
<hr>
사업소개 : <input type="file" id="PRO" name="PRO"accept="image/gif, image/jpeg, image/png"onchange="fileCheck(this)">F_PRO_001
<hr>
채용안내 : <input type="file" id="RCU" name="RCU"accept="image/gif, image/jpeg, image/png"onchange="fileCheck(this)"> F_RCU_001
<hr>
<hr>
<br>

<input type="submit" value="변경사항 적용하기" style="width:130px; height:50px;">
<button style="width:100px; height:50px;" onclick="mainbtn()">메인으로 이동</button>
<br>
<br>
<a href="/"><img src="resources/images/main/logo_top1.png" style="vertical-align:middle;border:0; background-color:black; " alt=""></a>
</form>
</body>
</html>