<?php 
require('top.php');

$resBanner=mysqli_query($con,"select * from banner where status='1' order by order_no asc");

?>
<div class="body__overlay"></div>

         <!-- start Vedio Area --->
         <section>
            <div class="vedio">
              
                <video    width="100%" loop muted autoplay="autoplay">
                    <source src="image/haa.mp4" type="video/mp4">
                </video>
            </div>
        </section> 
         <!-- End Vedio Area --->

          <!--zak presenting  section start-->

    <section>
		<p>ZAK STORE Presenting</p>
            <div class="product" >
                <div class="container">
                  <div class="slide-product">
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/a.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/h.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/w.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/p.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/ac.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/a.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/h.png"alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/w.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/p.png" alt=""></a>
                    </div>
                    
                    <div class="slide-image">
                      <a href="" target="_blank"><img src="image/ac.png" alt=""></a>
                    </div>
                </div>
            </div>
    </section>

        <!--zak presenting  section end-->

               <!-- shop by category section start-->

               <section class="ftr__product__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">Shop by category</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product__wrap clearfix">
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                            <div class="products text-center">
                                <div class="ht__cat__thumb">
                                    <a href="product.php">
                                        <img src="image/3df.png" alt="product images">
                                    </a>
                                    
                                        <div class="star">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        
                                            <button class="b-button">Buy Now</button>
                                    </div>
                                </div>
                                
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">iphone</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                            <div class="products text-center">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                       
                                    <img src="image/56.jpg" alt="product images">
                                    </a>
                                    
                                        <div class="star">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                            <button class="b-button">Buy Now</button>
                                    </div>
                                </div>
                                
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">iwatch</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                            <div class="products text-center">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                   
                                    <img src="image/homepod1.jpg" alt="product images">
                                    </a>
                                    
                                        <div class="star">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                            <button class="b-button">Buy Now</button>
                                    </div>
                                </div>
                                
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Homepod</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="products text-center">
                                    <div class="ht__cat__thumb">
                                        <a href="product-details.html">
                                            <img src="image/mac1.jpg" alt="product images">
                                        </a>
                                    </div>
                                    
                                    <div class="star">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        </div>
                                            <button class="b-button">Buy Now</button>
                                    
                                </div>
                                
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Mackbook</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        
                    </div>
                </div>

               
                <div class="row">
                    <div class="product__wrap clearfix">
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="image/ipad1.jpg" alt="product images">
                                    </a>
                                </div>
                                <div class="fr__hover__info">
                                    <ul class="product__action">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>

                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">iPad</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="image/airpods1.jpg" alt="product images">
                                    </a>
                                </div>
                                <div class="fr__hover__info">
                                    <ul class="product__action">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>

                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Airpods</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                        <img src="image/imac.jpeg" alt="product images">
                                    </a>
                                </div>
                                <div class="fr__hover__info">
                                    <ul class="product__action">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>

                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">iTV</a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product-details.html">
                                    
                                        <img src="image/56.jpg" alt="product images">
                                    </a>
                                </div>
                                <div class="fr__hover__info">
                                    <ul class="product__action">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>

                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html">Accessories </a></h4>
                                    <ul class="fr__pro__prize">
                                        <li class="old__prize">$30.3</li>
                                        <li>$25.9</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        
                    </div>
                </div>
            </div>
        </section>

    <!-- shop by category section end-->

        <?php if(mysqli_num_rows($resBanner)>0){?>
        <!-- Start Slider Area -->
        <div class="slider__container slider--one bg__cat--3">
            <div class="slide__container slider__activation__wrap owl-carousel">
                <?php while($rowBanner=mysqli_fetch_assoc($resBanner)){?>
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                    <h2 style="color:white;"><?php echo $rowBanner['heading1']?></h2>
                                    <h1 style="color:white; font-size:1.2rem"><?php echo $rowBanner['heading2']?></h1>
										
										<?php
										if($rowBanner['btn_txt'] !='' && $rowBanner['btn_link']!=''){
											?>
											<div class="cr__btn">
												<a href="<?php echo $rowBanner['btn_link']?>"><?php echo $rowBanner['btn_txt']?></a>
											</div>
											<?php
										}
										?>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="<?php echo BANNER_SITE_PATH.$rowBanner['image']?>" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<?php } ?>
            </div>
        </div>
        <!-- Start Slider Area -->
		<?php } ?>
		
        <!-- Start Category Area -->
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">New Arrivals</h2>
                        </div>
                    </div>
                </div>
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
							<?php
							$get_product=get_product($con,4);
							foreach($get_product as $list){
							?>
                            <!-- Start Single Category -->
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product.php?id=<?php echo $list['id']?>">
                                            <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                                        </a>
                                    </div>
                                    <div class="fr__hover__info">
										<ul class="product__action">
											<li><a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $list['id']?>','add')"><i class="icon-heart icons"></i></a></li>
											<li><a href="product.php?id=<?php echo $list['id']?>" ><i class="icon-handbag icons"></i></a></li>
										</ul>
									</div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><?php echo $list['mrp']?></li>
                                            <li><?php echo $list['price']?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
							<?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Category Area -->

         <!-- zak  warranty section start-->

         <section>
            <div class="container-fluid">
                <div class="row">
                    <div class="col col-lg-6 col-sm-12 ">
                        <h4 style="font-size:30px;font-family:italic;" ><span class="span">Warranty from</span><br> ZAK APPLE STORE<h4>
                            <video width="100%"  class="video-fluid"  loop muted autoplay="autoplay">
                                <source src="image/warrenty5.MP4" type="video/mp4">
                            </video>     
                    </div>
        
                    <div class="col  col-lg-6 col-sm-12">
                        <h4 style="font-size:30px;font-family:italic;"><span class="span">Offers</span><br>Exclusive for you </h4>
                        <img class="img-fluid" src="image/any iphone.png" alt="">   
    
                    </div>
                </div>
            </div> 
        </section>

    <!-- zak  warranty section end-->



        <!-- promise section  starts-->
      
            <div class="container-fluid zakpromise text-center">
                <div class="row row-cols-1">
                    <div class="col col-lg-3 ml-1 py-3">
                        <h4 style="font-family:Franklin Gothic Medium">ZAK APPLE STORE <span>Provides</span></h4><img class="logo7" src="image/3.png">
                    </div> 

                    <div class="col promises col-lg-2 bg-black py-4 ms-lg-3 ms-sm-1 text-center">
                        <h6 style="color:white">Trustable Delivery <img class="logo3" src="image/whiteapple.png"></h6>
                    </div>

                    <div class="col promises col-lg-2 bg-black py-4 ms-lg-3  text-center">
                        <h6 style="color:white">Best kind of Experience <img class="logo3" src="image/whiteapple.png"></h6> 
                    </div>

                    <div class="col promises col-lg-2 bg-black py-4 ms-lg-3 text-center">
                        <h6 style="color:white">Sustantial Service <img class="logo3" src="image/whiteapple.png"></h6>
                    </div>

                    <div class="col promise col-lg-2 bg-black  py-4 ms-lg-3 text-center">
                        <h6 style="color:white">Shop now & become a happy customer <img class="logo3" src="image/whiteapple.png"></h6>
                    </div>
                </div>    
            </div>

        <!-- promise section ends-->
        <!-- Start Product Area -->
        <section class="ftr__product__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">Best Seller</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product__list clearfix mt--30">
							<?php
							$get_product=get_product($con,4,'','','','','yes');
							foreach($get_product as $list){
							?>
                            <!-- Start Single Category -->
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product.php?id=<?php echo $list['id']?>">
                                            <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                                        </a>
                                    </div>
                                    <div class="fr__hover__info">
										<ul class="product__action">
											<li><a href="javascript:void(0)" onclick="wishlist_manage('<?php echo $list['id']?>','add')"><i class="icon-heart icons"></i></a></li>
											<li><a href="product.php?id=<?php echo $list['id']?>" ><i class="icon-handbag icons"></i></a></li>
										</ul>
									</div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><?php echo $list['mrp']?></li>
                                            <li><?php echo $list['price']?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
							<?php } ?>
                        </div>
                </div>
            </div>
        </section>
        <!-- End Product Area -->
		<input type="hidden" id="qty" value="1"/>

         <!--  zak apple store the best way section start-->
            
         <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                    <div class="banner1">
                        <h1  class="text-center" style="color:white;font-family:italic">ZAK APPLE STORE  <img class="logo2" src="image/whiteapple.png"></h1>
                        <h2 class="text-center" style="color:white; font-family:italic">The best way to buy the apple products you love.</h2>
                    </div>
                    </div>
                    </div>
                </div>
            </section>

        <!--  zak apple store the best way section start-->
        

        <!-- vedio section start ---->
            <section>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col col-lg-6 col-sm-12 ">
                            <h4 class="text-start" style="font-size:33px;color:black;font-family:italic;margin-left:-1px;"><span class="span">Featured</span><br>Introducing Apple AirPods Pro</h4>
                                <video  width="100%" controls ,autoplay,loop>
                                    <source src="image/AirPods Pro | Rebuilt from the sound up | Apple.mp4" type="video/mp4">
                                </video>     
                        </div>
        
                        <div class="col  col-lg-6 col-sm-12">
                            <h3 class="text-start" style="font-size:33px;color:black;font-family:italic;margin-top:9px;"><span class="span">Featured</span><br>Introducing Apple ultra Watch</h3>
                                <video  width="100%" loop muted autoplay="autoplay">
                                    <source src="image/Introducing Apple Watch.mov" type="video/mp4">
                                </video> 
                        </div>
                    </div>
                </div>   
            </section>
        <!-- vedio section start ---->
        

        <!-- feature section start-->
            <div id="feature">
                <div class="container-fluid  py-4 mb-1">
                    <div class="row">
                        <div class="col  fe-box1 ms-3">
                            <img class="img-fluid" src="image/free.JPG" alt="">
                            <h2 class="text-center py-2 mt-4 ">Free Shipping</h2>
                        </div>
      
                        <div class="col  fe-box1 ms-2">
                            <img class="img-fluid" src="image/f21.png" alt="">
                            <h2 class="text-center py-2 mt-1 ">Ontime Delivery</h2>
                        </div>

                        <div class="col  fe-box1 ms-2">
                            <img class="img-fluid" src="image/f3.png" alt="">
                            <h2 class="text-center py-2 mt-3">Save Money</h2>
                        </div>

                        <div class="col  fe-box1 ms-2">
                            <img class="img-fluid" src="image/f4.png" alt="">
                            <h2 class="text-center py-2 mt-3 ">Every Day Happy Sale</h2>
                        </div>

                        <div class="col  fe-box1 ms-2 me-3">
                            <img class="img-fluid" src="image/service2.JPG" alt="">
                            <h2 class="text-center py-2 mt-2 ">24/7 Service</h2>
                        </div>
                    </div>
                </div>
                            </div>
        <!-- feature section end-->
        



<?php require('footer.php')?>        
      