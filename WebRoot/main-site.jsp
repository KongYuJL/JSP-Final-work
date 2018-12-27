<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- fonts -->
    <link href='http://fonts.font.im/css?family=Raleway:400,800|Lato:400,400i|Lora' rel='stylesheet' type='text/css'>
    <!-- icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/publicStyle.css">
    <link rel="stylesheet" href="css/jquery.bxslider.min.css">
    <link rel="stylesheet" href="css/main-site.css" type="text/css" media="all">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
</head>

<body>
    <script>
        
	    //显示子菜单
	    function showSubMenu(li){
	        var subMenu = li.getElementsByTagName("ul")[0];
	        subMenu.style.display = "block";
	    }
	
	    //隐藏子菜单
	    function hideSubMenu(li){
	        var subMenu = li.getElementsByTagName("ul")[0];
	        subMenu.style.display = "none";
	    }
        $(function() {
            $('a[href*="#"],area[href*="#"]').click(function() {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var $target = $(this.hash);
                    $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');
                    if ($target.length) {
                        var targetOffset = $target.offset().top - 0.11 * document.documentElement.clientHeight;
                        $('html,body').animate({
                                scrollTop: targetOffset
                            },
                            1200);
                        return false;
                    }
                }
            });
        })

    </script>
    <div id="wrap1">
        <div>
            <i></i>
            <p>为了更好的体验，请将手机/平板横过来</p>
        </div>
    </div>
    <div id="wrap2">
        <header>
            <nav class="nav-container">
                <div class="logo-container">
                    <a href="index.html">
                        <img src="images/logo.png" alt="KAMA"> <span id="logo-text">KAMA WOODS</span>
                    </a>
                </div>
                <div class="button-container">
                    <ul class="nav-ul">
                        <li><a href="comNewsList.html"><i class="fa fa-newspaper-o fa-fw"></i> 新闻资讯/News</a> </li>
                        <li><a href="product.html"><i class="fa fa-tree fa-fw"></i> 产品展示/Products</a> </li>
                        <li> <a href="customer.html"><i class="fa fa-flag fa-fw"></i> 客户案例/Cases</a> </li>
                        <li><a href="contact.html"><i class="fa fa-map-marker fa-fw"></i> 联系我们/Contact us</a> </li>
                        <li id="user" onmouseover="showSubMenu(this)" onmouseout="hideSubMenu(this)">
                        	<i class="fa fa-user-circle fa-fw"></i>
                        <%if(session.getAttribute("username")==null){%>
                        		登陆注册/Login&Register
                        <%} else {%>
                       			 欢迎：<%= session.getAttribute("username")%>!
                       		<i class="fa fa-angle-down fa-fw"></i>
                       		<ul class="drop menu">
							     <li><a href="#">User center</a></li>
							     <li class="menu-separator"></li>
							     <li><a href="LogoutServlet">Log out</a></li>
							</ul>
                        <%}%>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- FirstView - Banner -->

        <div class="mainbody">
            <div class="title">"Innovation and Creditable Management"</div>
            <div class="language">
                <a href="../ch/index.html"><img src="images/china.png" title="中文" alt="中文"></a>
                <a href="../en/index.html"><img src="images/english.png" title="English" alt="English"></a>
            </div>
            <div class="banner">
                <script>
                    $(document).ready(function() {
                        $('.topslider').bxSlider({
                            mode: 'fade',
                            easing: 'ease-in-out',
                            slideWidth: 0.84 * document.documentElement.clientWidth,
                            slideMargin: 0,
                            auto: true,
                            speed: 1200,
                            autoHover: true,
                            controls: false,
                            pager: false,
                            pause: 2800
                        });
                    });

                </script>
                <ul class="topslider">
                    <li><img src="images/banner.jpg" alt=""></li>
                    <li><img src="images/03.jpg" alt=""></li>
                    <li><img src="images/02.jpg" alt=""></li>
                </ul>
                <div class="text">
                    <h1>KAMA - High-end boutique</h1>
                    <h1> wood veneer quality</h1>
                    <h1> suppliers.</h1>
                    <a href="#comInf">
                        <p>READ MORE</p>
                    </a>
                </div>
            </div>
            <div class="arrow">
                <a href="#comInf">
                <span></span>
            </a>
            </div>
            <div class="bottom">
                <ul>
                    <li>Integrity</li>
                    <li>Pragmatic</li>
                    <li>Innovation</li>
                    <li>Excellence</li>
                </ul>
            </div>
        </div>

        <!-- SecondView - Company Information -->

        <div id="comInf">
            <div id="logo">KAMA WOODS</div>
            <div class="content">
                <div class="left">
                    <img src="images/2.jpg" alt="">
                    <img src="images/venners/03.jpg" alt="">
                    <img src="images/3.JPG" alt="">
                </div>
                <div class="center">
                    <h3> High-end</h3>
                    <h1>Rare & Dyed venners</h1>
                    <div class="text">
                        <p>Kama Woods Manufacture Co. Ltd, in Dongguan is a leading supplier of Northen America timber products.</p>
                        <p>We have integrated operating systems from globally purchasing raw material an original place, bi-workshop solid planing and shearing, to product distribution. </p>
                        <p>The advantage of purchasing raw material at original places with our excellent sales teams and after sale services can benefit buyers of timber products as well as log buyers all over the world.</p>
                        <a href="#comDis">
                            <div class="button">Scroll down</div>
                        </a>
                        <div id="comInf-arrow">
                            <span></span>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <img src="images/6.jpg" alt="">
                    <div>
                        <img src="images/venners/02.jpg" alt="">
                        <img src="images/venners/04.jpg" alt="">
                    </div>
                    <img src="images/4.jpg" alt="">
                </div>
            </div>
        </div>

        <!-- ThirdView - Company Distribution -->

        <div id="comDis">
            <div class="title">
                <h1>Company Distribution & Sales Network</h1>
                <h3>"Sustaninable development and marketing internationally"</h3>
            </div>
            <div class="comPoints">
                <div class="pointsWrapper">
                    <div class="mapWave" id="mapWave1">
                        <span class="w1"></span>
                        <span class="w2"></span>
                        <span class="w3"></span>
                        <span class="w4"><span>ShangHai</span></span>
                    </div>
                    <div class="mapWave" id="mapWave2">
                        <span class="w1"></span>
                        <span class="w2"></span>
                        <span class="w3"></span>
                        <span class="w4"><span>JiaShan</span></span>
                    </div>
                    <div class="mapWave" id="mapWave3">
                        <span class="w1"></span>
                        <span class="w2"></span>
                        <span class="w3"></span>
                        <span class="w4"><span>DongGuan</span></span>
                    </div>
                    <div class="mapWave" id="mapWave4">
                        <span class="w1"></span>
                        <span class="w2"></span>
                        <span class="w3"></span>
                        <span class="w4"><span>ChengDu</span></span>
                    </div>
                </div>
                <div class="map">
                    <div class="text">
                        <h1>Stores details</h1><br>
                        <a href="storesPages/jiashan.html">
                            <p>JiaShan</p>
                        </a>
                        <a href="storesPages/chengdu.html">
                            <p>ChengDu</p>
                        </a>
                        <a href="storesPages/dongguan.html">
                            <p>DongGuan</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $('.bxslider').bxSlider({
                    mode: 'fade',
                    slideWidth: 0.7 * document.documentElement.clientWidth,
                    slideMargin: 0,
                    auto: true,
                    speed: 400,
                    autoHover: true,
                    controls: true,
                    pager: false
                });
            });

        </script>

        <!-- FourthView - Cases Show -->

        <div id="cases">
            <div class="title">CASES SHOW</div>
            <ul class="bxslider">
                <li><img src="images/01.jpg" alt="">
                    <div class="info">
                        <h5>Exterior Design</h5>
                        <h2>High-end Furniture</h2>
                        <a href="product.html" class="button">
                        View Details
                    </a>
                    </div>
                </li>
                <li><img src="images/02.jpg" alt="">
                    <div class="info">
                        <h5>Interior Design</h5>
                        <h2>Musical Instruments</h2>
                        <a href="product.html" class="button">
                        View Details
                    </a>
                    </div>
                </li>
                <li><img src="images/03.jpg" alt="">
                    <div class="info">
                        <h5>High-end Veneers</h5>
                        <h2>Veneer parquet</h2>
                        <a href="product.html" class="button"> View Details</a>
                    </div>
                </li>
                <li><img src="images/04.jpg" alt="">
                    <div class="info">
                        <h5>Good Service</h5>
                        <h2>Wooden door</h2>
                        <a href="product.html" class="button">
                        View Details
                    </a>
                    </div>
                </li>
            </ul>
        </div>

        <!-- FifthView - Products Information -->

        <div id="proInf">
            <div class="proTop">
                <h2>Strong Procurement Chain & Sophisticated Equipment Make Excellent Products.</h2>
                <hr>

                <h4><span>——</span><span> Product Details</span></h4>
            </div>
            <div class="proDes">
                <div class="proList">
                    <div class="proImg">
                        <img src="images/product-1.png" alt="">
                    </div>
                    <div class="proText">
                        <h3>Strong Procurement Chian</h3>
                        <h5>Global Business Development</h5>
                        <p>Kama company throughout the global supply chain security log is made of the advantages of resource supply. For the enterprise sustainable development of the adequate back-up resources guarantee; With five continents have maintained a good trade, provide the supply of material; Europe and Africa, North America.</p>
                        <a href="" class="button">More details</a>
                    </div>
                </div>
                <div class="proList">
                    <div class="left">
                        <div class="proImg">
                            <img src="images/product-2.jpg" alt="">
                        </div>
                        <div class="proText">
                            <h3>North America Series</h3>
                            <h5>Global Business Development</h5>
                            <p>Black Walnut from States in Northern U.S.; American Cherry from Pennsylvania State; American Red Oak from East American; American White Oak; Maple; Ash.</p>
                            <a href="" class="button">More details</a>
                        </div>
                    </div>
                    <div class="right">
                        <div class="proImg">
                            <img src="images/product-3.jpg" alt="">
                        </div>
                        <div class="proText">
                            <h3>European Series</h3>
                            <h5>Global Business Development</h5>
                            <p>Santos Crown; Santos Quarter; French Lacewood; Macore pomelle; Cerejeira Crotch; Khaya Crotch; Figured Red Gum; Lauro Preto; Olive Ash Burl; Ash Burl; White Ebony; White Wood, etc.</p>
                            <a href="" class="button">More details</a></div>
                    </div>
                </div>
                <div class="proList">
                    <div class="proText">
                        <h3>Dyeing Series</h3>
                        <h5>Global Business Development</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat quia, vel a dolorum dolore facilis ea voluptate nesciunt enim, autem tenetur repellendus sunt voluptas! Ducimus deleniti est ut eveniet quam.</p>
                        <a href="" class="button">More details</a></div>
                    <div class="proImg">
                        <img src="images/product-4.jpg" alt="">
                    </div>
                </div>

            </div>
        </div>

        <!-- SixthView - Products Information -->

        <div id="news">
            <div class="title">
                <h2>Latest news</h2>
                <a href="" class="button"><span>All news</span></a>
            </div>
            <ul>
                <li>
                    <h3>Red oak ridge triple-a.</h3>
                    <h5>06/28/2016</h5>
                    <p>Dongguan kumar wood supply a large number of north American wood, now supply red oak mountain grain AAA, quality assurance, affordable, welcome new and old customers to come to consult, negotiate. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet excepturi mollitia illum natus optio deleniti animi, assumenda perferendis nam laboriosam ipsam, tenetur ipsa qui aut et tempora odit unde est? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et porro similique consequuntur earum veniam iste quam soluta necessitatibus omnis ratione veritatis recusandae, numquam illo accusantium possimus repudiandae excepturi id officiis.</p>
                    <a href="" class="button"><i class="fa fa-location-arrow"></i>  Learn more</a>
                </li>
                <li>
                    <h3>Red oak ridge triple-a.</h3>
                    <h5>06/28/2016</h5>
                    <p>Dongguan kumar wood supply a large number of north American wood, now supply red oak mountain grain AAA, quality assurance, affordable, welcome new and old customers to come to consult, negotiate. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet excepturi mollitia illum natus optio deleniti animi, assumenda perferendis nam laboriosam ipsam, tenetur ipsa qui aut et tempora odit unde est? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et porro similique consequuntur earum veniam iste quam soluta necessitatibus omnis ratione veritatis recusandae, numquam illo accusantium possimus repudiandae excepturi id officiis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et porro similique consequuntur earum veniam iste quam soluta necessitatibus omnis ratione veritatis recusandae, numquam illo accusantium possimus repudiandae excepturi id officiis.</p>
                    <a href="" class="button"><i class="fa fa-location-arrow"></i> Learn more</a>
                </li>
                <li>
                    <h3>Red oak ridge triple-a.</h3>
                    <h5>06/28/2016</h5>
                    <p>Dongguan kumar wood supply a large number of north American wood, now supply red oak mountain grain AAA, quality assurance, affordable, welcome new and old customers to come to consult, negotiate. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet excepturi mollitia illum natus optio deleniti animi, assumenda perferendis nam laboriosam ipsam, tenetur ipsa qui aut et tempora odit unde est? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et porro similique consequuntur earum veniam iste quam soluta necessitatibus omnis ratione veritatis recusandae, numquam illo accusantium possimus repudiandae excepturi id officiis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et porro similique consequuntur earum veniam iste quam soluta necessitatibus omnis ratione veritatis recusandae, numquam illo accusantium possimus repudiandae excepturi id officiis.</p>
                    <a href="" class="button"><i class="fa fa-location-arrow"></i> Learn more</a>
                </li>
            </ul>
        </div>

        <!-- SeventhView - Partners -->

        <div id="partner">
            <h2>Partners</h2>
            <div class="logo">
                <div>
                    <div><img src="images/partner/partner-01.svg" alt=""></div>
                    <div><img src="images/partner/partner-02.svg" alt=""></div>
                    <div><img src="images/partner/partner-03.svg" alt=""></div>
                    <div><img src="images/partner/partner-04.svg" alt=""></div>
                </div>
                <div>
                    <div><img src="images/partner/partner-05.svg" alt=""></div>
                    <div><img src="images/partner/partner-06.svg" alt=""></div>
                    <div><img src="images/partner/partner-07.svg" alt=""></div>
                    <div><img src="images/partner/partner-08.svg" alt=""></div>
                </div>
                <div>
                    <div><img src="images/partner/partner-09.svg" alt=""></div>
                    <div><img src="images/partner/partner-10.svg" alt=""></div>
                    <div><img src="images/partner/partner-11.svg" alt=""></div>
                    <div><img src="images/partner/partner-12.svg" alt=""></div>
                </div>
                <div>
                    <div><img src="images/partner/partner-13.svg" alt=""></div>
                    <div><img src="images/partner/partner-14.svg" alt=""></div>
                    <div><img src="images/partner/partner-15.svg" alt=""></div>
                    <div><img src="images/partner/partner-16.svg" alt=""></div>
                </div>
            </div>
        </div>

        <!-- Footer -->

        <div id="footer">
            <div class="footerTop">
                <div class="top">
                    <ul class="column">
                        <li>About Company</li>
                        <li><a href="#comInf">Company</a></li>
                        <li><a href="#comDis">Stores</a></li>
                    </ul>
                    <ul class="column">
                        <li><a href="product.html">Products</a></li>
                        <li><a href="product.html">North America Series</a></li>
                        <li><a href="product.html">European Series</a></li>
                        <li><a href="product.html">Dyeing Series</a></li>
                    </ul>
                    <ul class="column">
                        <li><a href="comNewsList.html">News</a></li>
                        <li><a href="comNewsList.html">Comany news</a></li>
                        <li><a href="">Trade news</a></li>
                    </ul>
                </div>
                <div class="bottom">
                    <ul class="column">
                        <li><a href="customer.html">Cases show</a></li>
                    </ul>
                    <ul class="column">
                        <li><a href="#partner">Partners</a></li>
                    </ul>

                    <ul class="column">
                        <li><a href="contact.html">Contacts</a></li>
                        <ul>
                            <li>ADD: No.2~20, B9, Orient Xingye City, HouJie Town,Dongguan City, Guangdong, China.</li>
                            <li>TEL: 0769-82906000</li>
                            <li>FAX: 0769-82900010</li>
                            <li>E-mail: kamawoods@163.com</li>
                        </ul>
                        <ul>
                            <li>ADD: #111, 11Building, Orient Xingye City, Weitang Street, Jiashan, Jiaxing City, Zhejiang, China.</li>
                            <li>TEL: 0573-84616000</li>
                            <li>FAX: 0573-84616000</li>
                        </ul>
                        <ul>
                            <li>ADD: No.61~64, B2, YunKai Market, Xinfan Town,Xindu Area, Chengdu City, Xichuan, China.</li>
                            <li>TEL: 028-64121277</li>
                            <li>FAX: 028-64121500</li>
                        </ul>
                    </ul>
                </div>
                <div class="footerLogo">
                    <img src="images/logo-white.png" alt="">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam molestiae porro provident non dolor, dolore ab commodi illum nesciunt nostrum sunt adipisci recusandae rem minima suscipit modi mollitia, voluptatibus, aperiam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil officia esse expedita non sunt voluptatem, quibusdam provident vel adipisci dolor magnam necessitatibus fuga deserunt.<a href="#comInf">More Details</a></p>

                </div>
            </div>
            <div class="recordInf">
                <p>&copy; 2018 www.kamawoods.com</p>
                <p>@ Kama Industrial Co., Ltd. of Dongguan City IPC record 粤165410011</p>
                <p>Developed by Joel Josan</p>
            </div>
        </div>
    </div>
            </nav>
        </header>
    </div>
</body>

</html>
