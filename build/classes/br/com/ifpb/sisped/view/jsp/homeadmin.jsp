<%-- 
    Document   : homeadmin
    Created on : 19/09/2013, 21:16:24
    Author     : FILIPE GERMANO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>SisPed - Admin/Controle</title>
        <link rel="stylesheet" type="text/css" href="adm.css">
    </head>
    <body>
        <div id="cabecalho">
        </div>
        <div id="conteudo">
            <ul style="list-style: none" class="form">
                <li class="header">Painel de Controle Administrador </li>
                <li class="titulo aluno">Aluno</li>
                <li class="aluno"> <a href="cadastroaluno.html">Cadastrar Aluno No Sistema </a> </li>
                <li class="aluno"><a href="deletealuno.html">Excluir Aluno do Sistema</a> </li>

                <li class="titulo professor">Professor</li>   
                <li class="professor"><a href="cadastroprofessor.html">Cadastrar Professor No Sistema </a> </li>
                <li class="professor"><a href="deleteprofessor.html">Excluir Professor do Sistema</a> </li>

                <li class="titulo pedagogo">Pedagogo</li>
                <li class="pedagogo"><a href="cadastropedagogo.html">Cadastrar Pedagogo no Sistema </a> </li>
                <li class="pedagogo"><a href="deletepedagogo.html">Excluir Pedagogo do Sistema</a> </li>

                <li class="titulo admin">Administrador</li>
                <li class="admin"><a href="cadastroadmin.html">Cadastrar Administrador no Sistema </a> </li>
                <li class="admin"><a href="deleteadministrador.html">Excluir Administrador do Sistema</a> </li>

                <li><a href="cadastroatividade.html">Cadastrar Atividade </a> </li>

                <li><a href="cadastroocorrencia.html">Cadastrar Ocorrencia </a> </li>
                <li ><a href="LogoutServlet" id="sair">Sair</a> </li>
            </ul>
        </div>
        <div id="rodape"> </div>
    </body>
</html>
