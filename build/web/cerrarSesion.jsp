<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<%

    if (session != null) {
        session.invalidate();
        response.sendRedirect("login.jsp");
    } else {
        response.sendRedirect("index.html");
    }


%>