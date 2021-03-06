<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<%-- head 영역 --%>
<jsp:include page="/WEB-INF/views/include/head.jsp" />
<link href="/css/event.css" rel="stylesheet">
</head>
<body>
	<%-- header 영역 --%>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />

	<article>
		<h1>영화 이벤트</h1>

		<div class="items">
			<c:choose>
				<c:when test="${ not empty eventMovieList }">
					<c:forEach var="movie" items="${ eventMovieList }">
				       		<div class="oneItem">
				       		<div>
								<div class="imgParent">
									<a href="/eventNotice/main/one?num=${movie.ENum}">
										<img class="img-rounded" width ='200' src="/upload/${ movie.uploadpath }/${ movie.uuid }_${ movie.filename }">
									</a>
								</div>
								<div class="eventInfo">
									<span>${ movie.ETitle }</span>
									<span>${ movie.startDate } ~ ${ movie.endDate }</span>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div>영화 이벤트 없음</div>
				</c:otherwise>
			</c:choose>
		</div>

		<input type="button" value="되돌아가기" class="btn" onclick='history.back();'>

		<img alt="" src="/imgs/moreimg2.png">


	</article>

	<img alt="" src="/imgs/moreimg.png">

	<%-- footer 영역 --%>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>

