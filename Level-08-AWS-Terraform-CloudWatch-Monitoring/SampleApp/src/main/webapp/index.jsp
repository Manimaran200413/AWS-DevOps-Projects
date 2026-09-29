<%-- =====================================================================
     index.jsp  –  Root welcome file: redirects to /home servlet
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    response.sendRedirect(request.getContextPath() + "/home");
%>
