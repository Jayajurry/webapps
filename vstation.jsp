<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>EV Charging</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <!-- Google fonts link-->
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script&amp;subset=latin-ext" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/plugins.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar-collapse">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <div class="culmn">
            <header id="main_menu" class="header navbar-fixed-top">            
                <div class="main_menu_bg">
                    <div class="container">
                        <div class="row">
                            <div class="nave_menu">
                                <nav class="navbar navbar-default">
                                    <div class="container-fluid">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            <a class="navbar-brand" href="#home">
                                          <h4 style="color:#f6c23a;">EV Charging</h4></a>
                                        </div>

                                        <!-- Collect the nav links, forms, and other content for toggling -->



                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                           <ul class="nav navbar-nav navbar-right">
                                                <li class="active"><a href="index.html" >Home</a></li>
                                                <li><a href="vstation.jsp">View stations</a></li>
                                                <li><a href="ures.jsp">Responses</a></li>
                                                   <li><a href="feed1.jsp">Feedback</a></li>
                                                    <li><a href="index.html">Logout</a></li>

                                                
                                            </ul>


                                        </div>

                                    </div>
                                </nav>
                            </div>	
                        </div>

                    </div>

                </div>
            </header> <!--End of header -->





            <section id="home" class="home">
                <div class="overlay all_overlay">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 ">
                            <style>
                            
                            table,tr,td,th{
                                padding: 4px;
                                font-size: 16px;
                                color: white;
                                margin-top: -50px;
                                border-collapse: collapse;
                                border:2px solid white;
                                font-weight: bold;
                                width:110px;
                                 table-layout: fixed;
                                 margin-left:100px;
          
                                
                            }
                            td{
                                color:black;
                              
                            }
                            th{
                                text-align: center;
                               color:#f6c23a;
                            }
                           
                        </style>
                               <div class="single_home_slider text-center">
                                        <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                            <h4 style=" font-size:25px; margin-top:-100px; ">View EV Charging Station Details</h4>
                                            <br>
                                               
                     <%
                     String user=session.getAttribute("user").toString();
                     String location=request.getParameter("location");
                             
                     %><table>
                         <tr>
                             <th>Station ID</th>
                             <th>Station Name</th>
                             <th>KWH</th>
                             <th>Cost</th>
                             <th>Contact</th>
                             <th>Address</th>
                             <th>Map Location</th>
                              <th>Reservation</th>
                         </tr>
                         <%
                         
                          Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evcharge","root","root");
                         PreparedStatement ps=con.prepareStatement("Select * from station where location='"+location+"' ");
                         ResultSet rs=ps.executeQuery();
                         System.out.println(rs);
                        while(rs.next()){
                           String sno=rs.getString("sno");   
                         String sid=rs.getString("sid");
                         String sname=rs.getString("sname");
                         String kwh=rs.getString("kwh");
                         String cost=rs.getString("cost");
                          String contact=rs.getString("contact");
                      
                         String map=rs.getString("map");
                      
                        %>
                        <tr>
                 <td><%=sid%></td>
                 <td><%=sname%></td>
                 <td><%=kwh%></td>
                 <td><%=cost%></td>
                 <td><%=contact%></td>
                 <td><%=location%></td>
                 <td style=" width:100px;"><a href="<%=map%>">View Location</a></td>
                 <td ><a href="make.jsp?sno=<%=sno%>&&user=<%=user%>&&sid=<%=sid%>&&sname=<%=sname%>&&cost=<%=cost%>&&contact=<%=contact%>&&location=<%=location%>" style=" color:  #ff0000;">Reservation Request</a></td>
                  </tr><%}%> 










 
                     </table>


                                    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>





            <footer id="footer" class="footer">
                <div class="container">
                    <div class="main_footer text-center">
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="copyright_text">
                                    <p class=" wow fadeInRight" data-wow-duration="1s">Made with <i class="fa fa-heart"></i> by <a href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All Rights Reserved</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>

        <!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>

        <script src="assets/js/jquery.mixitup.min.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/js/jquery.masonry.min.js"></script>
        <script src="assets/js/jquery.fancybox.pack.js"></script>
        <!--This is link only for gmaps-->
        <script src="http://maps.google.com/maps/api/js"></script>
        <script src="assets/js/gmaps.min.js"></script>


        <script>

                                            function showmap() {
                                                var mapOptions = {
                                                    zoom: 8,
                                                    scrollwheel: false,
                                                    center: new google.maps.LatLng(-34.397, 150.644),
                                                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                                };
                                                var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
                                            }

        </script>


        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
