<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスク管理アプリ</title>
       <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
       <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>

    <body>
        <div id = "wrapper">
            <div id = "header">
                <h1>楓のタスク管理アプリケーションvol.01</h1>
            </div>
            <div id = "taskContent">
                ${param.taskContent}
            </div>
            <div id = "footer">
                prod. Kaede Maruyama
            </div>
        </div>
    </body>
</html>