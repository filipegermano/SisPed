<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ConsultaAtividades
    Created on : 18/09/2013, 15:22:55
    Author     : FILIPE GERMANO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="table.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Consulta Atividades</title>
    </head>
    <body>
        <sql:setDataSource var="sisped" driver="org.postgresql.Driver"
                           url="jdbc:postgresql://localhost:5432/SisPed"
                           user="postgres"  password="123456"/>


        <sql:query var="par" dataSource="${sisped}">
            SELECT * FROM tb2;
        </sql:query>       
    <center>
        <div style="margin:150px auto; width:900px"><!--this just gets it away from the edge-->
            <center><h1>Consulta de Atividades</h1></center>
            <table class="table-light">
                <tr>
                    <th>ID</th>
                    <th>Tipo</th>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Detalhe</th>		
                </tr>
                <c:forEach var="teste" items="${par.rows}">
                    <tr>
                        <td><c:out value="${teste.b2_id}"/></td>
                        <td><c:out value="${teste.b2_tipo}"/></td>
                        <td><c:out value="${teste.b2_nome}"/></td>
                        <td><c:out value="${teste.b2_descricao}"/></td>
                        <td><a href="#" title=<c:out value="${teste.b2_id}"/>>Detalhar</a></td>
                    </tr>
                </c:forEach>
            </table>




    </center>
</body>
</html>
