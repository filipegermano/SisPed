<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : newjsp
    Created on : 18/09/2013, 13:21:08
    Author     : FILIPE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>SisPed - Início</title>	
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="scripts.js" type="text/javascript"></script>
    </head>

    <body>
        <div id="cabecalho">

        </div>

        <div id="conteudo"> 	
            <div id="login">
                <div id="container-form">
                    <ul id="menu-de-usuario">
                        <li class="tipo" value="1" onClick="alternarUsuario(this)" ><img src="imagens/aluno_r.png" id="aluno"></li>
                        <li class="tipo" value="2" onClick="alternarUsuario(this)" ><img src="imagens/professor.png" id="professor"></li>
                        <li class="tipo" value="3" onClick="alternarUsuario(this)" ><img src="imagens/pedagogo.png" id="pedagogo"></li>
                        <li class="tipo" value="4" onClick="alternarUsuario(this)" ><img src="imagens/admin.png" id="admin"></li>
                    </ul>
                    <form action="ValidaLogin" name="form-login" id="form-login" method="post">
                        <table>
                            <tr> <td></td> <td><h3 id="titulo-usuario"> Aluno </h3></td></tr>
                            <tr> <td>Usuário</td> <td> <input type="text" name="usuario" class="campo" required> </td>  </tr>
                            <tr> <td>Senha</td> <td> <input type="password" name="senha" class="campo" required> </td> </tr>
                            <tr> <td>     </td> <td> <input type="submit" value="Entrar" class="botao" required> </td> </tr>
                            <input type="hidden" name="tipo_usuario" value="AL" id="tipo_usuario">
                        </table>
                    </form>
                </div> <!--fim container form-->


                <div id="about"></div>
                <div class="clear"> </div>

            </div>
            <div class="clear"></div>
        </div>

        <div id="rodape"> 
        </div>

    </body>
</html>
