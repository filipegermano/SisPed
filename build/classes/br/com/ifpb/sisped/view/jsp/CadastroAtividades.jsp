<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : CadastroAtividades
    Created on : 18/09/2013, 15:28:23
    Author     : FILIPE GERMANO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SisPed - Professor/Cadastrar atividade</title>
        <style> 
            #conteudo { width: 450px; margin: 0px auto; font-family: arial}
            #conteudo fieldset{ border: 2px solid gray; background-color: rgb(228, 228, 228); }
            #cabecalho { width: 500px; margin: 0px auto; font-family: Segoe UI;}
            .cb {width: 140px}
        </style>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <script>
            function validar() {
                nome = form_cadastro.nome.value;
                tipo = form_cadastro.tipo.value;
                descricao = form_cadastro.descricao.value;
                responsaveis = form_cadastro.responsaveis.value;

                if (nome == "") {
                    alert("informe um nome válido!");
                    return false;
                }

                if (tipo == "") {
                    alert("informe um tipo válido!");
                    return false;
                }

                if (descricao == "") {
                    alert("informe uma descrição válida!");
                    return false;
                }

                if (responsaveis == "") {
                    alert("informe os responsáveis!");
                    return false;
                }
            }
        </script>
        <!--tela do administrador -->
        <sql:setDataSource var="sisped" driver="org.postgresql.Driver"
                           url="jdbc:postgresql://localhost:5432/SisPed"
                           user="postgres"  password="123456"/>


        <sql:query var="par" dataSource="${sisped}">
            SELECT * FROM ta1;
        </sql:query> 



        <div id="cabecalho">
            <h1> Sisped - Cadastrar Atividades </h1>
        </div>



        <!--links para os serviços do admin
                só pode ser acessada pelo admin -->
        <div id="conteudo"> 	

            <form name="form_cadastro" action="CadastroAtividade" method="post">
                        <tr> <td>Nome: </td> <td> <input type="text" name="nome"></td> </tr><br>
                        <tr> <td>Tipo: </td> <td> <input type="text" name="tipo"></td> </tr><br>
                        <tr> <td>Descricao </td> <td> <textarea  name="descricao"></textarea> </td> </tr><br>
                        <fieldset>
                            <legend> Professores Responsáveis </legend>
                            <table>    
                                <c:forEach var="teste" items="${par.rows}">
                                    <tr>                                 
                                        <td><input type="checkbox" name="prof" value="${teste.a1_id}" /></td>
                                        <td><c:out value="${teste.a1_nome}"/></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </fieldset>
                            <fieldset>
                            <legend> Participantes </legend>
                            <table>    
                                <c:forEach var="teste2" items="${par.rows}">
                                    <tr>                                 
                                        <td><input type="checkbox" name="prof" value="${teste2.a1_id}" /></td>
                                        <td><c:out value="${teste2.a1_nome}"/></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </fieldset>

                    <input type="submit" onclick="return validar()">

            </form>
        </div>
        <div id="rodape">  </div>

        <script>
        </script>
    </body>
</html>
