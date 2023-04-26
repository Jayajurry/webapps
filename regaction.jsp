<%@page import="java.sql.*"%>
<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String location=request.getParameter("location");


  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
		    PreparedStatement query=con.prepareStatement("insert into ureg(user,pass,email,contact,location)values('"+user+"','"+pass+"','"+email+"','"+contact+"','"+location+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Register Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("ureg.jsp");
                    rd.include(request,response);
                }

       
                                   
























%>