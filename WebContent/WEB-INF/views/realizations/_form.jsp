<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="realization_date">日付</label><br />
<input type="date" name="realization_date" value="<fmt:formatDate value='${realization.realization_date}' pattern='yyyy-MM-dd' />" />
<br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_user.name}" />
<br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${realization.title}" placeholder="簡潔明瞭に！" />
<br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50" placeholder="●どんな気付きを得た？
●エピソードなどを加えて、可能な限り具体的に！
●どんな場面で実践できそう？
●その為の初めの一歩、何ができる？">${realization.content}</textarea>
<br />

<label for="evalution">有益度</label><br />
<select name = "evalution">
<option value = "0" <c:if test ="${realization.evalution==0}"> selected</c:if>>☆</option>
<option value = "1" <c:if test ="${realization.evalution==1}"> selected</c:if>>☆☆</option>
<option value = "2" <c:if test ="${realization.evalution==2}"> selected</c:if>>☆☆☆</option>
</select>
<br />

<label for="fixation">定着度 ※数日ごとに、更新しよう。</label><br />
<select name = "fixation">
<option value = "0" <c:if test ="${realization.fixation==0}"> selected</c:if>>★</option>
<option value = "1" <c:if test ="${realization.fixation==1}"> selected</c:if>>★★</option>
<option value = "2" <c:if test ="${realization.fixation==2}"> selected</c:if>>★★★</option>
</select>
<br />
<br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">Kidzuki！</button>