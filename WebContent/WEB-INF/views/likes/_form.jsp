<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>

<label for="code">ユーザーID</label><br />
<input type="text" name="code" value="${user.code}" />
<br /><br />

<label for="name">ユーザー名</label><br />
<input type="text" name="name" value="${user.name}" />
<br /><br />

<label for="password">パスワード</label><br />
<input type="password" name="password" />
<br /><br />

<c:if test = "${general_user == null && sessionScope.login_user != null}">
<label for="admin_flag">権限</label><br />
<select name="admin_flag">
    <option value="0"<c:if test="${user.admin_flag == 0}"> selected</c:if>>一般</option>
    <option value="1"<c:if test="${user.admin_flag == 1}"> selected</c:if>>管理者</option>
</select>
<br /><br />
</c:if>


<input type="hidden" name="_token" value="${_token}" />
<input type ="hidden" name = "general_user"  value = "${general_user}" />
<button type="submit">登録！</button>