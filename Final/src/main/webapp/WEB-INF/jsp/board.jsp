<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${title}</title>

<link type="text/css" rel="stylesheet"
	href="resource/res/css/sample.css" />
	
<script type="text/javaScript" language="javascript" defer="defer">
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
					<li><span class="btn_blue_l"> <a href="addboard.jsp">Add New Book</a> <img
							src="/resource/res/img/btn_bg_r.gif" style="margin-left: 6px;"
							alt="" />
					</span></li>
					<li><span class="btn_blue_l"> <a href="">List All Books</a> <img
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

					<tr>
						<td align="center" class="listtd">3</td>
						<td align="center" class="listtd"><a href="">Thinking in Java</a></td>
						<td align="left" class="listtd">BruceEckel&nbsp;</td>
						<td align="center" class="listtd">25.69&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">4</td>
						<td align="center" class="listtd"><a href="">Effective Java</a></td>
						<td align="left" class="listtd">JoshuaBloch&nbsp;</td>
						<td align="center" class="listtd">27.88&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">6</td>
						<td align="center" class="listtd"><a href="">Effect</a></td>
						<td align="left" class="listtd">joshua&nbsp;</td>
						<td align="center" class="listtd">23.99&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">7</td>
						<td align="center" class="listtd"><a href="">JavaGenerics</a></td>
						<td align="left" class="listtd">Nafalin&nbsp;</td>
						<td align="center" class="listtd">Kathy&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">8</td>
						<td align="center" class="listtd"><a href="">Passionate</a></td>
						<td align="left" class="listtd">ChadFowler&nbsp;</td>
						<td align="center" class="listtd">41.99&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">9</td>
						<td align="center" class="listtd"><a href="">The Art of Computer Programming</a></td>
						<td align="left" class="listtd">DonaldE.Kunth&nbsp;</td>
						<td align="center" class="listtd">199.0&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>
					</tr>

					<tr>
						<td align="center" class="listtd">10</td>
						<td align="center" class="listtd"><a href="">Code Complete</a></td>
						<td align="left" class="listtd">SteveMcConnell&nbsp;</td>
						<td align="center" class="listtd">38.42&nbsp;</td>
						<td align="center" class="listtd">
						<a href="">Edit</a> 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
						<a href="">Delete</a>       
						</td>     
						
					</tr>


				</table>
			</div>
			
		</div>
	</form>
</body>
</html>