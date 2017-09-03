<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Form Page</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>

    <form:form modelAttribute="user" id="form-user">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username" id="username" placeholder="your username"/></td>
                <td id="error-username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" id="password" placeholder="your password"/></td>
                <td id="error-password"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="submit" id="tombol"></td>
            </tr>
        </table>
    </form:form>



</body>


<script>


    $(document).ready(function(){

        $('#form-user').submit(function(){

            var username = $('#username').val();
            var password = $('#password').val();

            if(username==='' || password===''){

                if(username===''){
                    $('#error-username').text('Maaf, field nama tidak boleh kosong');
                }else{
                    $('#error-username').text('');
                }

                if(password===''){
                    $('#error-password').text('Maaf , field password tidak boleh kosong');
                }else{
                    $('#error-password').text('');
                }
                event.preventDefault();
            }else{
                $('#form-user').attr('method','POST');
                $('#form-user').attr('action','form');
            }


        });

    });
</script>


</html>
