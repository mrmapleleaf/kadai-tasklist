<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/appFormat.jsp">
    <c:param name="taskContent">
        <h2>id : ${task.id} のタスク編集ページ</h2>
            <form method="POST" action="${pageContext.request.contextPath}/update">
                <c:import url="_form.jsp"></c:import>
            </form>
    </c:param>
</c:import>