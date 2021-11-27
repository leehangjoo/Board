<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${id}</title>

<link type="text/css" rel="stylesheet"
	href="resource/res/css/sample.css" />
	
<script type="text/javaScript" language="javascript" defer="defer">
function fn_search(){
	document.listForm.action = '/board';
	document.listForm.submit();
}
function fn_select(id){
	document.listForm.action = '/boardDetail.do?no='+id;
	document.listForm.submit();
}
function fn_page_search(page){
	document.listForm.action = '/board?page='+page;
	document.listForm.submit();
}
function fn_regSubject() {
	document.listForm.action = "/regSubject.do";
	document.listForm.submit();
}
function fn_regist() {
	document.listForm.action = "/boardDetail.do";
	document.listForm.submit();
}
</script>
</head>

<body
	style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<form id="listForm" name="listForm" action="/sample/" method="post">
		<input type="hidden" name="selectedId" />
		<div id="content_pop">
			<!-- 타이틀 -->
			<div id="title">
				<ul>
					<li><img src="/resource/res/img/title_dot.gif" alt="" />&nbsp;&nbsp;Books Management</li>
				</ul>
			</div>
			<div id="sysbtn">
				<ul>
					<li><span class="btn_blue_l"> <a href="javascript:fn_regist()">Add New Book</a> <img
							src="/resource/res/img/btn_bg_r.gif" style="margin-left: 6px;"
							alt="" />
					</span></li>
					<li><span class="btn_blue_l"> <a href="/testdb.do">List All Books</a> <img
							src="/resource/res/img/btn_bg_r.gif" style="margin-left: 6px;"
							alt="" />
					</span></li>
				</ul>
			</div>
			<!-- // 타이틀 -->
			<div id="middle">
				<ul>
					<li><img src="/resource/res/img/title_dot.gif" alt="" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					List of Books</li>
				</ul>
			</div>
			<div id="search">
				<ul>
					<li><label for="searchCondition" style="visibility: hidden;">검색어
							선택</label> <select id="searchCondition" name="searchCondition"
						class="use">
							<option value="1">Name</option>
							<option value="0">id</option>
					</select></li>
					<li><label for="searchKeyword"
						style="visibility: hidden; display: none;">검색어 입력</label> <input
						id="searchKeyword" name="searchKeyword" class="txt" type="text"
						value="${id}" /></li>
					<li><span class="btn_blue_l"> <a href="javascript:fn_search()">구현실패</a> <img
							src="/resource/res/img/btn_bg_r.gif" style="margin-left: 6px;"
							alt="" />
					</span></li>
				</ul>
			</div>
			<!-- List -->
			<div id="table">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					summary="">
					<caption style="visibility: hidden"></caption>
					<colgroup>
						<col width="40" />
						<col width="200" />
						<col width="50" />
						<col width="80" />
						<col width="?" />
						<col width="60" />
					</colgroup>
					<tr>
						<th align="center">ID</th>
						<th align="center">Title</th>
						<th align="center">Author</th>
						<th align="center">Price</th>
						<th align="center">Actions</th>
					</tr>
					<c:forEach var="result" items="${subjectList}" varStatus="status">
					<tr>
						<td align="center" class="listtd"><c:out value="${result.ID}"/></td>
						<td align="center" class="listtd"><a href="javascript:fn_select('${result.ID}')"><c:out value="${result.TITLE}"/></a></td>
						<td align="left" class="listtd"><c:out value="${result.AUTHOR}"/>&nbsp;</td>
						<td align="center" class="listtd"><c:out value="${result.PRICE}"/>&nbsp;</td>
						<td align="center" class="listtd">
						<a href="/boardDetail.do?no=${result.ID}">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="/deleteSubject.do?id=${result.ID}">Delete</a></td>
					
					</tr>
					</c:forEach>
					
					


				</table>
			</div>
			<div id="paging">
				<a href="#" onclick="; return false;"><image
						src=/resource/res/img/btn_page_pre10.gif border=0 /></a>&#160;<a
					href="#" onclick=""><image
						src=/resource/res/img/btn_page_pre1.gif border=0 /></a>&#160;<strong>1</strong>&#160;<a
					href="javascript:fn_page_search(2)" onclick="">2</a>&#160;<a href="javascript:fn_page_search(3)" onclick="">3</a>&#160;<a
					href="javascript:fn_page_search(4)" onclick="">4</a>&#160;<a href="#" onclick="">5</a>&#160;<a
					href="#" onclick="">6</a>&#160;<a href="#" onclick="">7</a>&#160;<a
					href="#" onclick="">8</a>&#160;<a href="#" onclick="">9</a>&#160;<a
					href="#" onclick="">10</a>&#160;<a href="#" onclick=""><image
						src=/resource/res/img/btn_page_next1.gif border=0 /></a>&#160;<a
					href="#" onclick=""><image
						src=/resource/res/img/btn_page_next10.gif border=0 /></a>&#160; <input
					id="pageIndex" name="pageIndex" type="hidden" value="1" />
			</div>
		</div>
	</form>
</body>
</html>