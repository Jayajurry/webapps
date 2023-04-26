<%@page import="java.sql.*"%>
<%
    String sno=request.getParameter("sno");
    String user=request.getParameter("user");
String sid=request.getParameter("sid");
String sname=request.getParameter("sname");

String cost=request.getParameter("cost");
String contact=request.getParameter("contact");
String location=request.getParameter("location");
String map=request.getParameter("map");
  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
		    PreparedStatement query=con.prepareStatement("insert into station1(sno,user,sid,sname,cost,contact,location)values('"+sno+"','"+user+"','"+sid+"','"+sname+"','"+cost+"','"+contact+"','"+location+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Make a request to Station Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("vstation1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("vstation1.jsp");
                    rd.include(request,response);
                }


%>