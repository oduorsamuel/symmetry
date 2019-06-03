
    
      <!--menu -->
		<nav class="navbar navbar-default " role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button style="background-color:red"type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
                    
					<a class="navbar-brand" href="#" style=" color: #ff3333;">SYMMETRY ADMIN PANEL</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right" >

                        <li> <a href="index.php"><i class="fa fa-fw fa-envelope "><span style="margin-left: 2px; color: red;"><?php
                              $sql = "SELECT * FROM messages WHERE status=0";
                              $result = mysqli_query($obj->con,$sql);
                              $unread_sms = mysqli_num_rows($result);
                              if($unread_sms==0){
                                echo "";
                              }
                              else{
                                echo $unread_sms;
                              }
                        ?></span></i></a> </li> 

                        <li><a href="teacher.php" ><span class="glyphicon glyphicon-plus"></span> Add Teacher</a></li>
						<li><a href="notice.php" >Notices</a></li>
						<li><a href="gallery.php">Gallery</a></li>
						<li><a href="addArticle.php">Articles</a></li>
						<li><a href="featured_student.php">Featured Student</a></li>
						<li><a href="team.php">Team</a></li>
						
						<li class="dropdown">
       
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="changepassword.php"><i class="fa fa-user fa-fw"></i>Change password</a></li>
                    <li class="divider"></li>
                    <li><a href="login.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
						
					</ul>
				</div>
			</div>
		</nav>
         
		 <nav class="navbar-default navbar-side" role="navigation">

 		<div  style="margin-top: 35px;  margin-left: 20px; ">
        
        <div class="list-group">
        	<a href="index.php" class="list-group-item active">Dashboard</a>
        </div>
     	<div class="list-group" style="background-color:#F0755F">
         <a href="gallery.php" class="list-group-item">Add Gallery Photos</a>
         <a href="addArticle.php" class="list-group-item">Testimonial</a>
         <a href="featured_news.php" class="list-group-item">latest Info</a> 
         <a href="featured_student.php" class="list-group-item">Featured Dishes</a> 
         <a href="team.php" class="list-group-item">Our Restaurant</a>
         <a href="addStudent.php" class="list-group-item">Register Staff</a>
         <a href="addStudent.php" class="list-group-item">Add Menu</a>
         <a href="removeTeacher.php" class="list-group-item">Remove Staff</a> 
         <a href="delete_carousel.php" class="list-group-item">Remove image</a> 
    	 </div>

     


     <div class="list-group">
         <a href="#" class="list-group-item disabled">Manage Account</a>
         <a href="changepassword.php" class="list-group-item">Change Password</a>
         <a href="login.php" class="list-group-item">Logout</a>   
         
     </div>
 </div>
 </nav>
 

		



        
