<?php
require('connection.inc.php');
require('functions.inc.php');
require('add_to_cart.inc.php');
$wishlist_count=0;
$cat_res=mysqli_query($con,"select * from categories where status=1 order by categories asc");
$cat_arr=array();
while($row=mysqli_fetch_assoc($cat_res)){
	$cat_arr[]=$row;	
}

$obj=new add_to_cart();
$totalProduct=$obj->totalProduct();

if(isset($_SESSION['USER_LOGIN'])){
	$uid=$_SESSION['USER_ID'];
	
	if(isset($_GET['wishlist_id'])){
		$wid=get_safe_value($con,$_GET['wishlist_id']);
		mysqli_query($con,"delete from wishlist where id='$wid' and user_id='$uid'");
	}

	$wishlist_count=mysqli_num_rows(mysqli_query($con,"select product.name,product.image,wishlist.id from product,wishlist where wishlist.product_id=product.id and wishlist.user_id='$uid'"));
}

$script_name=$_SERVER['SCRIPT_NAME'];
$script_name_arr=explode('/',$script_name);
$mypage=$script_name_arr[count($script_name_arr)-1];

$meta_title="ZAK apple store";
$meta_desc="ZAK apple store";
$meta_keyword="ZAK apple store";
$meta_url=SITE_PATH;
$meta_image="";
if($mypage=='product.php'){
	$product_id=get_safe_value($con,$_GET['id']);
	$product_meta=mysqli_fetch_assoc(mysqli_query($con,"select * from product where id='$product_id'"));
	$meta_title=$product_meta['meta_title'];
	$meta_desc=$product_meta['meta_desc'];
	$meta_keyword=$product_meta['meta_keyword'];
	$meta_url=SITE_PATH."product.php?id=".$product_id;
	$meta_image=PRODUCT_IMAGE_SITE_PATH.$product_meta['image'];
}if($mypage=='contact.php'){
	$meta_title='Contact Us';
}

?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $meta_title?></title>
    <meta name="description" content="<?php echo $meta_desc?>">
	<meta name="keywords" content="<?php echo $meta_keyword?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta property="og:title" content="<?php echo $meta_title?>"/>
	<meta property="og:image" content="<?php echo $meta_image?>"/>
	<meta property="og:url" content="<?php echo $meta_url?>"/>
	<meta property="og:site_name" content="<?php echo SITE_PATH?>"/>
	
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/core.css">
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/custom.css">
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
	<style>
	.htc__shopping__cart a span.htc__wishlist {
		background: #fff;
		border-radius: 100%;
		color: #000;
		font-size: 9px;
		height: 17px;
		line-height: 19px;
		position: absolute;
		right: 18px;
		text-align: center;
		top: -4px;
		width: 17px;
		margin-right:15px;
	}

	.htc__shopping__cart a span.htc__qua {
    background: #fff;
    border-radius: 100%;
    color: #000;
    font-size: 9px;
    height: 17px;
    line-height: 19px;
    position: absolute;
    right: -5px;
    text-align: center;
    top: -4px;
    width: 17px;
}

    	/**---------------------------------  zak apple store presenting  css Start----------------------------------------- */

        *.product{
	height:200px;
	margin:0px;
	position:relative;
	width:100%;
	display:grid;
	overflow:hidden;
	place-items:center;
	margin-bottom:1.5rem;
    }
    p{
	font-size:2rem;
	color:black;
	font-family:italic;
	padding-left:20px;
	padding-top:10px;
    margin-top:2rem;
    margin-bottom:1rem;
    }

    .slide-product{
	    display:flex;
	    width:calc(250px *18);
	    animation:scroll 20s linear infinite;
    }

    @keyframes scroll{
	    0%{ 
	        transform:translateX(0);
	    }
	    100%{
		    transform:translateX(calc(-250px*9));
	    }
    }
	
    .slide-image{
        width:500px;
	    display:flex;
	    align-items:center;
	    padding:10px;
	    perspective:100px;
	    box-shadow:2px 2px 2px  #808080;
    }

    img  {
	width:100%;
	transition:transform 1s;
    }
     /**---------------------------------  zak apple store presenting  css end----------------------------------------- */

     
	 /* ---------------------------------------shop by category  css start---------------------------------------------*/


     .products{

padding:10px 12px;
border:1px solid grey;
cursor:pointer;
border-radius:10px;
box-shadow:2px 2px 3px grey;
margin:15px 10px;
transition:0.02s ease;
}

.products img{
width: 100%;
border-radius: 10px;
}
.products:hover img{ 
box-shadow:2px 2px 3px darkorange;

}
.b-button{
width: 100px;
height: 5vh;
border: 2px solid black;
box-shadow: 2px 2px 1px black;
}

.products .b-button{
background-color: darkorange;
transform: translateY(20px);
opacity: 0;
transition: 0.3s all;
}

.products:hover .b-button{
transform: translateY(0);
opacity: 1;

}
.star i{
font-size: 14px;
color:goldenrod;
}
.star {
padding: 5px 0;
}
/* ---------------------------------------shop by category css end ---------------------------------------------*/

	.title__line--2 {
    color: darkorange;
    font-size: 18px;
    font-weight: 500;
    margin-bottom: 25px;
    text-transform: uppercase;
	}
footer{
    padding-top:1rem;
}
	.social__link li a i {
    background: darkorange none repeat scroll 0 0;
    border-radius: 100%;
    color: #000;
    display: inline-block;
    font-size: 16px;
    height: 32px;
    line-height: 30px;
    text-align: center;
    transition: all 0.4s ease 0s;
    width: 32px;
	}
	a {
    color: grey;
	}
	.copyright__inner p{
    margin-top:1px;
	}
	@media (max-width: 767px){
	.copyright__inner {
    display: block;
    height: inherit;
    justify-content: inherit;
    padding: 2px 0;
	}
	.copyright__inner p{
    margin-top:1px;
    margin-bottom:1px;

	}
	}
	.copyright__inner span{
    color:darkorange;
	}

		
    .owl-carousel .owl-stage-outer {
    position: relative;
    overflow: hidden;
    -webkit-transform: translate3d(0,0,0);
    background-color: black;
		}
	.slider__fixed--height {
    align-items: center;
    display: flex;
    height: 500px;
	}
	header{
    background-color: #000;
}
.sticky__header.scroll-header {
  -webkit-animation: 300ms ease-in-out 0s normal none 1 running fadeInDown;
          animation: 300ms ease-in-out 0s normal none 1 running fadeInDown;
  background: #000 none repeat scroll 0 0;
  box-shadow: 1px 2px 3px grey;
  left: 0;
  margin: 0 auto;
  position: fixed;
  right: 0;
  top: 0;
  width: 100%;
  z-index: 99;
}
.main__menu > li > a {
    color: #fff;
    display: block;
    font-size: 14px;
    height: 80px;
    line-height: 80px;
    position: relative;
    text-transform: uppercase;
    font-family: 'Poppins', sans-serif;
}
.header__search a i {
    color: #fff;
    font-size: 19px;
    position: relative;
}
.htc__shopping__cart a i {
    color: #fff;
    font-size: 19px;
}
@media (min-width: 768px) and (max-width: 991px){
.htc__shopping__cart {
    margin-right: 39px;
    display: flex;
}
}
@media (max-width: 767px){
.htc__shopping__cart {
    margin-right: 30px;
    display: flex;
}
}
.mean-container a.meanmenu-reveal {
    border: 2px solid #fff;
    color: #fff;
    cursor: pointer;
    display: block;
    font-family: Arial,Helvetica,sans-serif;
    font-size: 1px;
    font-weight: 700;
    height: 22px;
    line-height: 22px;
    margin-top: -56px;
    padding: 5px 6px;
    position: absolute;
    right: 0;
    text-decoration: none;
    text-indent: -9999em;
    top: 0;
    width: 22px;
}
.mean-container a.meanmenu-reveal span {
    background: #fff none repeat scroll 0 0;
    display: block;
    height: 3px;
    margin-top: 3px;
}
.header__account a {
    color: #fff;
    font-size: 19px;
    margin-right: 5px;
    padding-right: 15px;
    position: relative;
	line-height: 35px;
}
@media (max-width: 767px){
.navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 230px;
    background-color: black;
    border: 0;
    box-shadow: none;
}}
.main__menu li.drop ul.dropdown {
    background: #ffffff none repeat scroll 0 0;
    box-shadow: 0 0 0px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.1);
    left: 0;
    margin: 0;
    opacity: 0;
    padding: 0;
    position: absolute;
    top: 120%;
    transition: all 0.2s ease-in-out 0s;
    visibility: hidden;
    width: 150px;
    z-index: 999;
}
.logo3{
    width:22px;
}

     /* banner section zak the best way to buy apple  */
     .banner1{
    width:100%;
    height:100px;
    background-color: black;
    color: white;
    margin-top:0px;
    margin-bottom:16px;
    box-shadow: 4px 4px 3px grey;
    }
    .banner1 h1,h2{
    font-size:30px;
    }
.banner1 h1{
    padding-top:1rem;
}
@media (max-width: 767px){
    .banner1 h1,h2{
    font-size:16px;
    }
}
.logo2{
    width:22px;
    padding-bottom:8px;
}
    .zakpromise h4{
    padding-top:1px;
    }
    .zakpromise{
        text-align: center;
        margin-top:20px;
        margin-bottom:60px;

    }
    .promises{
    background-color:black;
    border-radius: 1px;
    height: 5rem;
    margin-left:1px;
    margin-right:1px;
    padding-top:2px;
    padding-bottom:2px;

 
    }
   
.promise{
    background-color:black;
    border-radius: 1px;
    height: 5rem;
    margin-left:1px;
    margin-right:1px;
    padding-top:2px;
    padding-bottom:2px;
 
}
    .logo7{
        width:50%;
    }
   
    .zakpromise{
    padding-top:3rem;
    }
    .zakpromise h6{
    font-size:1rem;
    text-align: center;
    padding:20px;
    }
/**********************--Feature section---*******************/

    #feature .fe-box1 h6{
        display:inline-block;
        padding:5px 4px 3px 4px;
        font-size:14px;
        line-height:1;
        border-radius:4px;
        color:black;
    }

    #feature{
        margin-bottom: 1rem;
    }
    
    #feature .fe-box1{
        width:15%;
        text-align:center;
        padding:0.1rem 0.1rem;
        box-shadow:0.1rem 0.1rem 0.1rem grey;
        border:0.1rem solid black;
        border-radius:4px;
        margin:0 6px;   
        display:inline-block;    
    }
    
    #feature .fe-box1:hover{
        box-shadow:10px 10px 54px rgba(70,62,221,0.1);
    }
 
    #feature .fe-box1 h2{
        font-size:1rem;
        padding:1rem;
        line-height:1;
        color:black;
        font-family:italic;
    }
    @media (max-width: 790px) {
        #feature .fe-box1{
            width:30%;       
        }

        #feature .fe-box1 h6{
            font-size:0.5rem;
            display:content;
        }
        #feature .fe-box1 h2{
        font-size:0.5rem;
        padding:0.1rem;
        padding-bottom:-4rem;
    }
    }

    @media (max-width: 767px){
 .pro__details__tab{
   
    display: flex;
}
}





    /*------------------------------------------------store aboutus contactus service founder co-founder css---------------------------------------------------- */
    .section-title{
    text-align: center;
    padding: 19px;
    }
    .section-title h2{
    font-size: 22px;
    text-transform: uppercase;
    font-family: oswald;
    text-shadow: 0 1px 2px rgba(0,0,0,0.05);
    padding-bottom:6px;
    }
    .section-title h4{
    font-size:20px;
    text-transform: uppercase;
    font-family: oswald;
    text-shadow: 0 1px 2px rgba(0,0,0,0.05);
    }
    .details span{
    color: purple;
    padding-left: 8px;
    font-size: 20px;
    }
    .map-area{
    width: 600px;
    height: 465px;
    background-color: white;
    box-shadow: rgba(0,0,0,0.35) 0 5px 15px ;
    }
    .map-area iframe{
    width: 100%;
    height: 100%;
    border: none;
    }
    .contact-area .badge{
    font-size: 17px;
    }

    .get-in-touch{
    max-width: 800px;
    margin: 50px auto;
    position:relative;
    box-shadow: 0 10px 30px 0px rgba(0,0,0,0.1);
    padding: 30px;
    }   
    .get-in-touch .title{
    text-transform: uppercase;
    text-align: center;
    letter-spacing: 3px;
    font-size: 2em;
    line-height: 48px;
    padding-bottom: 20px;
    color: #5543ca;
    background: linear-gradient(to right, #f4524d 0%, #5543ca);
    -webkit-background-clip: text;
    background-clip:transparent;
    -webkit-text-fill-color: transparent;
    }
    .contact-form .form-field{
    position: relative;
    margin: 30px 0;
    }
    .contact-form .input-text{
    display: block;
    width: 100%;
    height: 36px;
    border-width: 0 0 2px 0;
    border-color: #5543ca;
    font-size: 18px;
    line-height: 26px;
    font-weight: 400;
    }

    .contact-form .input-text:focus + .label,
    .contact-form .input-text.not-empty + .label{
    transform: translateY(-24px);
    }
    .contact-form .input-text:focus{
    outline: none;
    }
    .contact-form .label{
    position: absolute;
    left: 20px;
    bottom: 11px;
    font-size: 10px;
    line-height: 26px;
    font-weight: 400;
    color: #5543ca;
    cursor: text;
    transition: transform 0.2s ease-in-out;
    }
    .contact-form .submit-btn{
    
    display: inline-block;
    background-image: linear-gradient(125deg,#a72879,#064497);
    color: white;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 18px;
    padding: 8px 16px;
    border: none;
    width: 200px;
    cursor: pointer;
    }
   .privacy{
    font-size:1.6rem;
    padding-top:1rem;
    padding-bottom:1rem;
   }
 
    /**-------------------------------- store CSS h4,h5 -----------------------------------*/
    .contact-area h4{
    font-size:1rem;
    color:black;
    }
    .contact-area h5{
    font-size:1rem;
    color:black;
    padding-bottom:1rem;
    }
    /*---------media queries of contactus*/
    @media (max-width:991px){
    .contact-form{
        margin-bottom: 30px;

    }
    .map-area{
        width: 100%;
        height: 400px;
    }
    .details {
        padding-bottom: 15px;
        padding-top: 15px;

    }
    }
    /* contactus page ends*/
    span{
    color: darkorange;         /*  footer copyright span  */
    }
    .drop li{
    color:white;
    }
    .main__menu li{
    color:white;
        }

    .promise{
    padding-top:10px;
    padding-bottom: 20px;
    
    margin-bottom:10px;
    }

    .list a{
    text-decoration:none;
    color:darkorange;
    }
    .list a:hover{
   
    color:blue;
    }
    #about-founder h3{
    padding-top: 20px;
    font-size:16px;
    color: #808080;
    }

    #about-founder h2{
    padding-top:10px;
    font-size: 19px;
    color: black;
    }

    #about-founder p{
    font-size:18px;
    }
    #about-founder img{
    padding-top: 10px;
    width:100%;
    }


    @media (max-width:998px){
    #about-founder{
        padding-top:5px
    }
  
    }
    /*------- aboutus page starts -----------*/

    #about-head{
	background-color:white;
	
    }
    .about h2{
    font-size: 22px;
    }

    .about h4{
	font-size:25px;
	color:grey;
	padding-bottom: 2px;
    padding-top:2px
    }
    .about h1{
	font-size:20px;
	color:grey;
	padding-left:20px;
	text-align:left;
    }
    .about img{
    width: 250px;
    padding-bottom: 15px;
    
    }
    .about p{
	font-size:20px;
	color:#25242A;
	padding-left:5px;
    padding-top:10px;
    }

    .about span{
    color: #24262b;
    }

    .about a{
	text-decoration:none;
	color:lightslategray;
    }

    .about a:hover{
	color:#088178;
	padding-left:5px;
    }
    .about button{
    font-size:17px;
    width:100px;
    height: 35px;
    background-color: black;
    color:white;
    margin-left:70px;
    }

    .about button:hover{
    color: black;
    background-color: darksalmon;
    }

    .about .list a{
    padding-top:5px;
    padding-left:20px;
    color:darkorange;
    }

    .contact-area p{
    font-size:18px;
    color:#25242A;
    }
    .contact-area a{
    text-decoration:none;
    color: darkorange;
    }
    .contact-area a:hover{
    color:blue;
    }

    /*----------aboutus page media queries*/

    @media (max-width:470px){
    .myH1{
        color:black;
        font-size:10px;
    }
 
    }

    @media (min-width:480px){
    .myH1{
        color:black;
        font-size:15px;
    }

    @media (max-width:968px){
        .about img{
            width: 300px;
            justify-content: space-between;
            padding-bottom: 15px;
        }
   
    }
    }

    /*----------------------------------aboutus  page ends--------------------------*/

    .list {
    padding-top:30px;
    /*font-size:1.6rem;*/
    }

.details{
    margin-top:50px;
}
    /*----------------------------------contactus  page ends--------------------------*/

    .contact-box input {
    background: #f5f5f5 none repeat scroll 0 0;
    border: 0 none;
    color: #666666;
    font-size: 16px;
    height: 62px;
    padding: 0 47px;
    
    }
    .single-contact-form + .single-contact-form {
    margin-top: 30px;
    }

    .contact-box.message textarea {
    background: #f5f5f5 none repeat scroll 0 0;
    border: 0 none;
    color: black;
    font-size: 16px;
    min-height: 220px;
    padding: 18px 47px;
    box-shadow: 1px 2px 3px grey;

    }
    .contact-btn {
    margin-top: 32px;
    }
    .fv-btn {
    background: #c43b68 none repeat scroll 0 0;
    border: 1px solid #c43b68;
    color: #fff;
    font-family: 'Poppins', sans-serif;
    font-size: 14px;
    font-weight: 600;
    height: 50px;
    padding: 0 30px;
    text-transform: uppercase;
    transition: all 0.4s ease 0s;
    }
    .fv-btn:hover {
    background: transparent none repeat scroll 0 0;
    border: 1px solid #c43b68;
    color: #c43b68;
    }
    .fv-btn i {
    padding-right: 9px;
    }
    .contact-box.name {
    
    margin-left: -5px;
    margin-right: -5px;
    margin-top:15px;
   
    box-shadow:1px 2px 3px grey;
    }
    .contact-box.name input {
    margin: 0 1px;
    width: 100%;
   
    
    }
    .ptb--100 { padding-top:1rem; padding-bottom: 10px;}



    /**---------------------------------  privacy terms shipping booking cancel  css----------------------------------------- */


    .content h1{
    padding-top:1rem;
   font-family: oswald;
  
    }
    .content ul li{
    font-size:1.4rem;
    list-style: disc;
    padding-bottom:1rem;
    
    }



    .logo1{
    width:45px;
    }
/* service page*/

.service_heading{
    text-transform: uppercase;
    position: relative;
    padding-top: 120px;
    }

    .service_heading:after{
    content: '';
    position: absolute;
    top: 100%;
    left: 50%;
    transform: translateX(-50%);
    border-bottom: 3px solid #3e4555;
    width: 0%;
    height: auto;
    transition: all 0.3s linear;
    }
    .service_heading:hover:after{
    width:20%;
    }
    .service .badge{
    font-size: 20px;
    }
    .service{
    color: #8d97ad;
    font-weight: 300;
    }
    .service h5{
    color:#3e4555;

    }
    .service h4{
    color:purple;
    font-size:17px;

    }

    .service .img-shadow{
    box-shadow:  0 0 30px rgba(115, 128, 157,0.3);
    }
    .service .wrap-service .img-hover{
    transition: all 0.2s ease-in;
    }
    .service .wrap-service .img-hover:hover{
    -wekit-transform:scale(1.1);
    transform: scale(1.1);
    transform: scale(1.1);
    }
    .queries h3{
    color: #24262b;
    font-size:18px;
    padding-top:30px;
   
    }
    .queries h1{
    color: #24262b;
    font-size: 18px;
    padding-bottom: 10px;
    padding-top: 10px;

   
    }
    .queries p{
    font-size: 50px;
    }
    .queries a{
    text-decoration: none;
    font-size: 20px;
    color:green ;
    }

    .queries span{
    color:green ;
            }

    @media (max-width:768px){
    .queries a{
       
        font-size: 15px;
       
    }
    .queries h3{
      
        font-size:15px;
        padding-top:15px;
        
        
       
    }
    
    .queries h1{
        color: #24262b;
        font-size: 15px;
        padding-bottom: 10px;
        padding-top: 10px;

        
       
    }
    }
    .ht__bradcaump__wrap {
    align-items: center;
    display: flex;
    height: 170px;
   
}
    /* service page ends */
    #social_share_box img{
        width:5%;
        margin-bottom:0;
    }
	</style>
</head>
<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <header id="htc__header" class="htc__header__area header--one">
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <!--****************LEFT SIDE start*****************-->

                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="index.php"><img src="images/logo/4.png" alt="logo images"></a>
                                </div>
                            </div>
                            <!--****************LEFT SIDE start*****************-->

                            <div class="col-md-7 col-lg-6 col-sm-5 col-xs-3">
                                  <!--**************** middle SIDE start*****************-->

								  <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        <li class="drop"><a href="index.php">Home</a></li>
                                        <li class="drop"><a href="#">Shop</a>
                                            <ul class="dropdown">
                                            <?php
										foreach($cat_arr as $list){
											?>
											<li><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></li>
											<?php
										}
										?>
                                            </ul>
                                        </li>
                        
                                        
                                        <li><a href="service.php">SERVICE</a></li>
                                        <li><a href="aboutus.php">ABOUTUS</a></li>
                                        <li><a href="contact.php">CONTACTUS</a></li>
                                        <li><a href="store.php">STORE</a></li>

                                    </ul>
                                </nav>
                                        <!--**************** mobile view start*****************-->

										<div class="mobile-menu clearfix visible-xs visible-sm">
                                    <nav id="mobile_dropdown">
                                        <ul>
                                        <li><a href="index.php"><i class="icon-home icons"></i> Home </a></li>
                                            <li class="drop"><a href="#"><i class="icon-wallet icons"></i> Shop </a>
                                            <ul class="dropdown">
                                            <?php
										foreach($cat_arr as $list){
											?>
											<li><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></li>
											<?php
										}
										?>
                                            </ul>
                                        </li>
                        
                                        
                                        <li><a href="service.php"><i class="icon-badge icons"></i> SERVICE </a></li>
                                        <li><a href="aboutus.php"><i class="icon-check icons"></i> ABOUTUS </a></li>
                                        <li><a href="contact.php"><i class="icon-phone icons"></i> CONTACTUS </a></li>
                                        <li><a href="store.php"><i class="icon-map icons"></i> STORE </a></li>
                            
                                    </ul>
                                    </nav>
                                </div>  
                                  <!--**************** mobile view end *****************-->

                            </div>
                                  <!--**************** Right side start *****************-->

                            <div class="col-md-3 col-lg-4 col-sm-4 col-xs-4">
                                <div class="header__right">
									<?php 
									$class="mr15";
									if(isset($_SESSION['USER_LOGIN'])){
										$class="";
									}
									?>
									<div class="header__search search search__open <?php echo $class?>">
                                        <a href="#"><i class="icon-magnifier icons"></i></a>
                                    </div>
									
                                    <div class="main__menu__nav">
										<?php if(isset($_SESSION['USER_LOGIN'])){
											?>
										<ul class="main__menu">
											<li class="drop"><i class="icon-user icons"></i></a>
												<ul class="dropdown">
													<li><a class="dropdown-item">Hi <?php echo $_SESSION['USER_NAME']?></a></li>
													<li> <a class="dropdown-item" href="my_order.php">Order</a></li>
													<li> <a class="dropdown-item" href="profile.php">Profile</a></li>
													<li> <div class="dropdown-divider"></div></li>
													<li> <a class="dropdown-item" href="logout.php">Logout</a></li>
                                            	</ul>
											</li>

                                    	</ul>
										<?php
											}else{
												echo '<a href="login.php" class="mr15"><i class="icon-user icons"></i></a>';
											}
										?>
                                	</div>
									
                                    <div class="htc__shopping__cart">
										<?php
										if(isset($_SESSION['USER_ID'])){
										?>
										<a href="wishlist.php" class="mr15"><i class="icon-heart icons"></i></a>
                                        <a href="wishlist.php"><span class="htc__wishlist"><?php echo $wishlist_count?></span></a>
										<?php } ?>
                                        <a href="cart.php"><i class="icon-handbag icons"></i></a>
                                        <a href="cart.php"><span class="htc__qua"><?php echo $totalProduct?></span></a>
                                    </div>
                                </div>
                            </div>
                                  <!--**************** Right side end *****************-->

                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
        </header>
		<div class="body__overlay"></div>
		<div class="offset__wrapper">
            <div class="search__area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="search__inner">
                                <form action="search.php" method="get">
                                    <input placeholder="Search here... " type="text" name="str">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>