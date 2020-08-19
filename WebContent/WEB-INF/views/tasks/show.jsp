<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/appFormat.jsp">
    <c:param name="taskContent">
        <c:choose>
            <c:when test="${task != null}">
                <h2>ID ： ${task.id} のタスク詳細</h2>

                <table>
                    <tbody>
                       <tr>
                           <th>タスク内容</th>
                           <td><c:out value="${task.taskContent}"/></td>
                       </tr>
                       <tr>
                           <th>作成日時</th>
                           <td><fmt:formatDate value="${task.created_at}" pattern="yyyy-mm-dd HH:mm:ss"/></td>
                       </tr>
                       <tr>
                           <th>更新日時</th>
                           <td><fmt:formatDate value="${task.updated_at}" pattern="yyyy-mm-dd HH:mm:ss"/></td>
                       </tr>
                    </tbody>
                </table>

                <p><a href="${pageContext.request.contextPath}/index">タスク一覧へ戻る</a></p>
                <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのタスクはありませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>