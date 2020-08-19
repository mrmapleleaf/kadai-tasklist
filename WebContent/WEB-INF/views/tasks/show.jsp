<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/appFormat.jsp">
    <c:param name="taskContent">
        <c:choose>
            <c:when test="${task != null}">
                <h2>ID ： ${task.id} のタスク詳細</h2>

                <p>タスク内容：<c:out value="${task.taskContent}"/></p>
                <p>作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-mm-dd HH:mm:ss"/></p>
                <p>更新日時：<fmt:formatDate value="${task.updated_at}" pattern="yyyy-mm-dd HH:mm:ss"/></p>

                <p><a href="${pageContext.request.contextPath}/index">タスク一覧へ戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのタスクはありませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>