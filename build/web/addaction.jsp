<%@page import="java.sql.*"%>
<%
String sid=request.getParameter("sid");
String sname=request.getParameter("sname");
String kwh=request.getParameter("kwh");
String cost=request.getParameter("cost");
String contact=request.getParameter("contact");
String location=request.getParameter("location");
String map=request.getParameter("map");
  
try 
		{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
		    PreparedStatement query=con.prepareStatement("insert into station(sid,sname,kwh,cost,contact,location,map)values('"+sid+"','"+sname+"','"+kwh+"','"+cost+"','"+contact+"','"+location+"','"+map+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Add Station Details Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addstation.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("addstation.jsp");
                    rd.include(request,response);
                }


%>