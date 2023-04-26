<%@page import="java.sql.*"%>
<%try{
String user=request.getParameter("user");
String feed=request.getParameter("feed");
 String sname=request.getParameter("sname");    
Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
                        PreparedStatement query=con.prepareStatement("Update station1 set feed='"+feed+"' where user='"+user+"' and sname='"+sname+"' and status='Reserved Successfully'  ");
                        System.out.println(query);
                        query.executeUpdate();
                        System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Give Feedback Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("feed1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("feed1.jsp");
                    rd.include(request,response);
                }





%>