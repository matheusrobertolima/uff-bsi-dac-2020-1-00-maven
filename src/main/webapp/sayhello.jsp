<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
    </head>
    <body>
        <jsp:useBean id="myBean" class="hello.MessageBean"/>
        <h1>SayHello.jsp</h1>
        <% String lang = request.getParameter("lang"); %>
        <% String tratamento = request.getParameter("tratamento"); %>    
        
        <% Date data = new Date(); 
           int dataint = data.getHours();
           Date dataatual =  Calendar.getInstance().getTime();
           String datatexto = "";
           if(dataint >= 5 && dataint <= 12) {
               if (lang.equals("pt"))
               datatexto = "Bom Dia";
               if (lang.equals("en"))
               datatexto = "Good Morning";
               if (lang.equals("fr"))
               datatexto = "Bonjour";
               if (lang.equals("es"))
               datatexto = "Buen Día";
               if (lang.equals("it"))
               datatexto = "Buongiorno";
               if (lang.equals("de"))
               datatexto = "Guten Morgen";
           }
           
           if(dataint >= 13 && dataint <= 18) {
               if (lang.equals("pt"))
               datatexto = "Boa Tarde";
               if (lang.equals("en"))
               datatexto = "Good Afternoon";
               if (lang.equals("fr"))
               datatexto = "Bon Après-midi";
               if (lang.equals("es"))
               datatexto = "Buenas Tardes";
               if (lang.equals("it"))
               datatexto = "Buon Pomeriggio";
               if (lang.equals("de"))
               datatexto = "Guten Nachmittag";
           }
           
           if((dataint >= 19 && dataint <= 24) || (dataint >= 0 && dataint <= 4)) {
               if (lang.equals("pt"))
               datatexto = "Boa Noite";
               if (lang.equals("en")) 
               datatexto = "Good Evening";
               if (lang.equals("fr"))
               datatexto = "Bonsoir";
               if (lang.equals("es"))
               datatexto = "Buenas Noches";
               if (lang.equals("it"))
               datatexto = "Buona Serata";
               if (lang.equals("de"))
               datatexto = "Guten Abend";
               
           }
           
           if(tratamento.equals("sr")) {
               if (lang.equals("pt"))
               tratamento = "Sr. ";
               if (lang.equals("en")) 
               tratamento = "Mr. ";
               if (lang.equals("fr"))
               tratamento = "M. ";
               if (lang.equals("es"))
               tratamento = "Senõr ";
               if (lang.equals("it"))
               tratamento = "Sig ";
               if (lang.equals("de"))
               tratamento = "Herr ";
           }
           
           if(tratamento.equals("sra")) {
               if (lang.equals("pt"))
               tratamento = "Sra. ";
               if (lang.equals("en")) 
               tratamento = "Lady ";
               if (lang.equals("fr"))
               tratamento = "Dame ";
               if (lang.equals("es"))
               tratamento = "Dama ";
               if (lang.equals("it"))
               tratamento = "Signora ";
               if (lang.equals("de"))
               tratamento = "Dame ";
           }
           
        %>
        
        <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
        <jsp:getProperty name="myBean" property="msg"/>, 
        <%=tratamento%>
        <%=request.getParameter("nome")%>!
  
        <%=datatexto%>!
        
        
        <br><br>
        Horário Atual: <%=dataatual%>
        
    </body>
</html>
