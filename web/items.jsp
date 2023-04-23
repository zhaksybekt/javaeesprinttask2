<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<br><br>
<div class="container">
    <%
        ArrayList<Items> itemsss = (ArrayList<Items>) request.getAttribute("itemsss");
        if(itemsss!=null){
            for (int i = 0; i < itemsss.size(); i++) {
                if (i % 3 == 0) {
    %><div class="row"><%
    }
%>
    <div class="col">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title"><%=itemsss.get(i).getPrice()%> $</h5>
                <p class="card-text"><%=itemsss.get(i).getName()%></p>
                <p class="card-text"><%=itemsss.get(i).getDescription()%></p>
                <a href="#" class="btn btn-primary">BUY NOW</a>
            </div>
        </div>
    </div>
    <%
        if (i % 3 == 2 || i == itemsss.size() - 1) {
    %></div> <br><br><%
    }
%>
    <%
            }
        }
    %>
</div>
</body>
</html>