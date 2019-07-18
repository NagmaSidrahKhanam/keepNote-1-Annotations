<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
		 button. Handle errors like empty fields -->
<form action = "saveNote" id="form" method = "post">
<center>
<table>
<tr>
<td>
<label>Note Id: </label></td>
<td><input type="Integer" name="noteId"> </td>
</tr>
<br>
<br>
<tr>
<td><label>title: </label></td>
<td><input type="text" name="noteTitle"><td>
</tr>
<br>
<br>
<tr>
<td>
<label>content: </label></td>
<td><input type="text" name="noteContent"></td></tr>
<br>
<br>
<tr>
<td>
<label>status: </label></td>
<td><input type="text" name="noteStatus"></td></tr>
<br>
<br>
<tr><td>
<button type="submit">Submit</button></td></tr>
</table>
</center>
</form>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	 <c:if test = "${list.size() > 0}">
	 <center>
	<table id="table">
        <tbody>
            <tr><th>ID</th><th>Title</th><th>Content</th>
				<th>Status</th><th>Create At</th>
            </tr>
             <c:forEach items="${list}" var="noteVar">
	            <tr>
	       			<td>${noteVar.noteId}</td>
	                <td>${noteVar.noteTitle}</td>
	                <td>${noteVar.noteContent}</td>
	                <td>${noteVar.noteStatus}</td>
	                <td>${noteVar.createdAt}
	                    <td><form action="deleteNote" method="get"><input type="hidden" name="noteId" value="${note.noteId }"><input type="submit" value="Delete"></form>

	                </td>
	            </tr>
      		</c:forEach>
        </tbody>
    </table>
    </center>
    </c:if>
    	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->

</body>
</html>