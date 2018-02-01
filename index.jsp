<%--
  Created by IntelliJ IDEA.
  User: mks
  Date: 2/2/18
  Time: 12:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String languages[] = {"java", "php", "python", "R", "C#"};%>
<html>
<head>
    <title>Languages</title>
    <script
            src="jquery-3.3.1.js">
    </script>
</head>
<body>

<%
    for (int i = 0; i < languages.length; i++) {
%>
<input class="langs" name="checkbox<%=i+1%>" type="checkbox"><%=languages[i]%>
</input>
<br>
<%
    }
%>
<input name="dummy" type="checkbox" onchange="checkAll();">Check me to check all</input>

<script type="text/javascript">
    function checkAll() {
        if ($('input[name=dummy]').is(':checked')) {
            $('input[class=langs]').attr('checked', true);
        }
        else {
            $('input[class=langs]').attr('checked', false);
        }

    }

</script>
</body>
</html>
