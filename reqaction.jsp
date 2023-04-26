<%@page import="java.sql.*"%>
<%try{
String user=request.getParameter("user");
String sid=request.getParameter("sid");
 
Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
                        PreparedStatement query=con.prepareStatement("Update station1 set status='Reserved Successfully' where user='"+user+"' and sid='"+sid+"'  ");
                        System.out.println(query);
                        query.executeUpdate();
                        System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Reservation Accepted Successfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("ureq.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("ureq.jsp");
                    rd.include(request,response);
                }





%>
