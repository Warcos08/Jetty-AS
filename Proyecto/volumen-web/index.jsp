<!DOCTYPE html>
<html>
  <body>
	<h2>Lista de archivos:</h2>
	<table>
	<%@ page import="java.io.*" %>
	<% 
		String file = application.getRealPath("img/");
		File f = new File(file);
		String [] fileNames = f.list();
		File [] fileObjects= f.listFiles();
		for (int i = 0; i < fileObjects.length; i++) {
			if(!fileObjects[i].isDirectory()){
				String fname = file+fileNames[i];
				%>
				<tr><td><a href=" <%= "img/" + fileNames[i]%>" > <%=fileNames[i]%> </a></td></tr>
				<%
			}
		}
	%>
	</table>
  </body>
</html>
