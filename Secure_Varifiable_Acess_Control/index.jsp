<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%! 
public int convert(String str) 
{ 
	int conv=0; 
	if(str==null) 
	{ 
		str="0"; 
	} 
	else if((str.trim()).equals("null")) 
	{ 
		str="0"; 
	} 
	else if(str.equals("")) 
	{ 
		str="0"; 
	} 
	try
	{ 
		conv=Integer.parseInt(str); 
	} 
	catch(Exception e) 
	{ 
	} 
	return conv; 
	
} 
%>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
		<link rel='stylesheet' id='camera-css'  href='css/camera.css' type='text/css' media='all'>

		<link rel="stylesheet" type="text/css" href="css/slicknav.css">
		<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
		
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700|Open+Sans:700' rel='stylesheet' type='text/css'>
		<script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
		<script type="text/javascript" src="js/camera.min.js"></script>
		<script type="text/javascript" src="js/myscript.js"></script>
		<script src="js/sorting.js" type="text/javascript"></script>
		<script src="js/jquery.isotope.js" type="text/javascript"></script>
		<!--script type="text/javascript" src="js/jquery.nav.js"></script-->
		

		<script>
			jQuery(function(){
					jQuery('#camera_wrap_1').camera({
					transPeriod: 500,
					time: 3000,
					height: '490px',
					thumbnails: false,
					pagination: true,
					playPause: false,
					loader: false,
					navigation: false,
					hover: false
				});
			});
		</script>
		
</head>


<%
	int no=convert(request.getParameter("no"));
	if(no==1)
	{
		    
%>       
    		
    	 <script type="text/javascript">
    			alert('Enter Username and Password !');
    			</script>
<%
	}
	if(no==2)
	{
%>
		
    		
    	<script type="text/javascript">
    			alert(' Please,Enter Your Username.!!');
    			</script>
<%
	}
	if(no==3)
	{
%>
		
    	
    	
    	<script type="text/javascript">
    			alert(' Please,Enter Your Password.!');
    			</script>
<%
	}
%>
<%
	if(no==4)
	{
%>
		<script type="text/javascript">
    			alert('Sorry invalid username and password');
    			</script>
<%
	}
%>
<%
	if(no==5)
	{
%>
		
		
	<script type="text/javascript">
    			alert('You have Logged out successfully...!');
    			</script>	
<%
	}
%>
<body>
<center>
						 <img src="bg.png" width="1340px">
	</center>					
 <div id="home">
 
    	<div class="headerLine">
	<div id="menuF" class="default">
	
	
		<div class="container">
			<div class="row">
				
				<div class="col-md-8">
					<div class="navmenu"style="text-align: center;">
						<ul id="menu">
							<li class="active" ><a href="#home">Home</a></li>
							
							<li><a href="#project">ADMIN</a></li>
							<li><a href="#news">DATA OWNER</a></li>
							<li class="last"><a href="#contact">USER</a></li>
						
						</ul>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
		<div class="container">
			<div class="row wrap">
				<div class="col-md-12 gallery"> 
						<div class="camera_wrap camera_white_skin" id="camera_wrap_1">
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We listen.</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We discuss.</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>We develop.</h2>
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
		
	 
    </div>
    

   
    <div id="project">    	
		<div class="line3">
			<div class="container">
				<div id="project1" ></div>
				<div class="row Ama">
					<div class="col-md-12">
					<span name="projects" id="projectss"></span>
			<form name="f1" id="login" method="post" action="<%=request.getContextPath()%>/AdminLogin"> 
					<label><font color="white" size="9px">ADMIN LOGIN</font></label><br/><br/>
					<label><font color="white">USERNAME:</font></label>
						<input type="text"  name="username" placeholder='USERNAME *'/>
						<br/><br/>
						<label><font color="white">PASSWORD:</font></label>
						<input type="password"  name="password" placeholder='PASSOWRD *'/>
					
						
						<div class="cBtn col-xs-12">
							
								 
        <button type="submit" class="send"  class="fa fa-share"><span>Login</span></button>
      
      				
			
							
								
							
						</div>
					</form>
					</div>
					
				</div>
			</div>
		</div>          
    
    
   
    </div>    
    

    
    <div id="news">
    	<div class="line4">		
			<div class="container">
				<div class="row Ama">
					<div class="col-md-12">
						
				<form name="f1" id="login" method="post" action="<%=request.getContextPath()%>/DataOwnerLogin">
					<label><font color="white" size="9px">DATA OWNER LOGIN</font></label><br/><br/>
					<label><font color="white">USERNAME:</font></label>
						<input type="text"  name="username" placeholder='USERNAME *'/>
						<br/><br/>
						<label><font color="white">PASSWORD:</font></label>
						<input type="password"  name="password" placeholder='PASSOWRD *'/>
						
						
						<div class="cBtn col-xs-12">
							
							
								 <button type="submit" class="send"  class="fa fa-share"><span>Login</span></button>
							
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	
			
    </div>
    
    
    <!--contact start-->
    
    <div id="contact">
    	<div class="line5">					
			<div class="container">
				<div class="row Ama">
					<div class="col-md-12">
					
					 <form name="f1" id="login" method="post" action="<%=request.getContextPath()%>/UserLogin">
					<label><font color="white" size="9px">USER LOGIN</font></label><br/><br/>
					<label><font color="white">USERNAME:</font></label>
						<input type="text"  name="username" placeholder='USERNAME *'/>
						<br/><br/>
						<label><font color="white">PASSWORD:</font></label>
						<input type="password"  name="password" placeholder='PASSOWRD *'/>
						
						
						<div class="cBtn col-xs-12">
							 <button type="submit" class="send"  class="fa fa-share"><span>Login</span></button>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
		
		
    </div>		
		
		
	<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script>
			$(document).ready(function(){
			$(".bhide").click(function(){
				$(".hideObj").slideDown();
				$(this).hide(); //.attr()
				return false;
			});
			$(".bhide2").click(function(){
				$(".container.hideObj2").slideDown();
				$(this).hide(); // .attr()
				return false;
			});
				
			$('.heart').mouseover(function(){
					$(this).find('i').removeClass('fa-heart-o').addClass('fa-heart');
				}).mouseout(function(){
					$(this).find('i').removeClass('fa-heart').addClass('fa-heart-o');
				});
				
				function sdf_FTS(_number,_decimal,_separator)
				{
				var decimal=(typeof(_decimal)!='undefined')?_decimal:2;
				var separator=(typeof(_separator)!='undefined')?_separator:'';
				var r=parseFloat(_number)
				var exp10=Math.pow(10,decimal);
				r=Math.round(r*exp10)/exp10;
				rr=Number(r).toFixed(decimal).toString().split('.');
				b=rr[0].replace(/(\d{1,3}(?=(\d{3})+(?:\.\d|\b)))/g,"\$1"+separator);
				r=(rr[1]?b+'.'+rr[1]:b);

				return r;
}
				
			setTimeout(function(){
					$('#counter').text('0');
					$('#counter1').text('0');
					$('#counter2').text('0');
					setInterval(function(){
						
						var curval=parseInt($('#counter').text());
						var curval1=parseInt($('#counter1').text().replace(' ',''));
						var curval2=parseInt($('#counter2').text());
						if(curval<=707){
							$('#counter').text(curval+1);
						}
						if(curval1<=12280){
							$('#counter1').text(sdf_FTS((curval1+20),0,' '));
						}
						if(curval2<=245){
							$('#counter2').text(curval2+1);
						}
					}, 2);
					
				}, 500);
			});
	</script>
	<script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery('#menu').slicknav();
		
	});
	</script>
	
	<script type="text/javascript">
    $(document).ready(function(){
       
        var $menu = $("#menuF");
            
        $(window).scroll(function(){
            if ( $(this).scrollTop() > 100 && $menu.hasClass("default") ){
                $menu.fadeOut('fast',function(){
                    $(this).removeClass("default")
                           .addClass("fixed transbg")
                           .fadeIn('fast');
                });
            } else if($(this).scrollTop() <= 100 && $menu.hasClass("fixed")) {
                $menu.fadeOut('fast',function(){
                    $(this).removeClass("fixed transbg")
                           .addClass("default")
                           .fadeIn('fast');
                });
            }
        });
	});
    //jQuery
	</script>
	<script>
		/*menu*/
		function calculateScroll() {
			var contentTop      =   [];
			var contentBottom   =   [];
			var winTop      =   $(window).scrollTop();
			var rangeTop    =   200;
			var rangeBottom =   500;
			$('.navmenu').find('a').each(function(){
				contentTop.push( $( $(this).attr('href') ).offset().top );
				contentBottom.push( $( $(this).attr('href') ).offset().top + $( $(this).attr('href') ).height() );
			})
			$.each( contentTop, function(i){
				if ( winTop > contentTop[i] - rangeTop && winTop < contentBottom[i] - rangeBottom ){
					$('.navmenu li')
					.removeClass('active')
					.eq(i).addClass('active');				
				}
			})
		};
		
		$(document).ready(function(){
			calculateScroll();
			$(window).scroll(function(event) {
				calculateScroll();
			});
			$('.navmenu ul li a').click(function() {  
				$('html, body').animate({scrollTop: $(this.hash).offset().top - 80}, 800);
				return false;
			});
		});		
	</script>	
	<script type="text/javascript" charset="utf-8">

		jQuery(document).ready(function(){
			jQuery(".pretty a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true, social_tools: ''});
			
		});
	</script>
	</body>
</html>