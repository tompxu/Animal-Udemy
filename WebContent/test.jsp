<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/Animals" user="root" password="qq123456">
select id, stem, extension from images
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    Stem ${row.stem}<br/>
    Extension ${row.extension}<br/>
</c:forEach>

  </body>
</html>