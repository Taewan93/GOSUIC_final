<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <% if(session.getAttribute("userEmail") == null) { %>
	<script type="text/javascript">
		alert("�α����� ���ּ���!");
	</script>
	<jsp:forward page="index.html"></jsp:forward>
<%} %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>����� | �Ź����</title>
 <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->


        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                          <!--  ���� ��� ��� -->
          <p>
            <span>�����</span>
            <span>�ε��� �Ź� �˻� ����Ʈ</span>
          </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                          <!--  ������ ��� ���-->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <!--���� ��� �ΰ�  -->
        <a class="navbar-brand" href="index.html"><img src="assets/img/mainpage/gosuic_logo3_small.png" alt=""></a>
      </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <div class="button navbar-right">
                    
                                   <!-- �α���, ȸ������ ��ư  -->
                      
          <c:if test="${userEmail eq null}">
          <button class="navbar-btn nav-button wow bounceInRight login" onclick=" location.href='/GOSUIC/loginform.sp' " data-wow-delay="0.45s">�α���</button>
          <button class="navbar-btn nav-button wow fadeInRight" onclick=" location.href='/GOSUIC/joinform.sp' " data-wow-delay="0.48s">ȸ������</button>
          </c:if>
                      
           <c:if test="${userEmail  ne null}">
           <label for="email"><%=session.getAttribute("userEmail")%>	</label>
           </c:if>
           </div>
           
           
                    <ul class="main-nav nav navbar-nav navbar-right">
                      <li>
            <a href="/GOSUIC/mainform.sp">Home <b class="caret"></b></a>

          </li>
          <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="/GOSUIC/list.sp">�Ź�</a></li>
          <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="/GOSUIC/properties.sp">�Ź���</a></li>
                    <li class="wow fadeInDown" data-wow-delay="0.4s"><a class="" href="">�ε��� ����</a></li>
                    <li class="wow fadeInDown" data-wow-delay="0.5s"><a class="" href="">�Խ���</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="page-head">
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">�Ź�</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">
                <div class="row">

                <div class="col-md-2 p0 padding-top-40">
                  <!--���� �˻���  -->
                    <div class="blog-asside-right pr0">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                            <div class="panel-heading">
                                <h3 class="panel-title">�˻�</h3>
                            </div>
                            <div class="panel-body search-widget">
                                <form action="" class=" form-inline">
                                    <fieldset>
<div class="row">
                                          <!-- ��/�� �˻� ��Ӵٿ� �޴� -->
                                          <div class="form-group">
                                            <select id="ADDR1_SIDO" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="��/��">
                            <!-- ��Ӵٿ� �޴��� DB���� �ҷ���  -->
                                                                    <option>��/��1</option>
                                                                    <option>��/��2</option>
                                                                    <option>��/��3</option>
                                                                    <option>��/��4</option>
                                                                    <option>��/��5</option>
                                                                    <option>��/��6</option>
                                                                </select>
                                          </div>
    </div>

  <div class="row">
                                              <div class="form-group">
                                                <select id="ADDR2_SIGUNGU" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="��/��/��">

                                                                        <option>��/��/��1</option>
                                                                        <option>��/��/��2</option>
                                                                        <option>��/��/��3</option>
                                                                        <option>��/��/��4</option>
                                                                        <option>��/��/��5</option>
                                                                        <option>��/��/��6</option>
                                                                    </select>
                                              </div>
</div>
  <div class="row">
                                              <div class="form-group">
                                                <select id="ADDR3_EUBMYUNDONG" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="��/��/��">

                                                                        <option>��/��/��1</option>
                                                                        <option>��/��/��2</option>
                                                                        <option>��/��/��3</option>
                                                                        <option>��/��/��4</option>
                                                                        <option>��/��/��5</option>
                                                                        <option>��/��/��6</option>
                                                                    </select>
                                              </div>

</div>


                                    </fieldset>

                                    <!--���� ���� ��Ӵٿ� �޴� end  -->

                                    <fieldset class="padding-5">
                                        <div class="row">
                                          <div class="form-group">
                                            <input type="text" class="form-control" placeholder="�ּҰ���(����:����)">
                                          </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                          <div class="form-group">
                                            <input type="text" class="form-control" placeholder="�ִ밡��(����:����)">
                                          </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked>����Ʈ</label>
                                                </div>
                                            </div>

                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox">����</label>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked>�ټ���</label>
                                                </div>
                                            </div>
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox" checked>�ܵ�</label>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset class="padding-5">
                                        <div class="row">
                                            <div class="col-xs-6">
                                                <div class="checkbox">
                                                    <label><input type="checkbox">�ٰ���</label>
                                                </div>
                                            </div>

                                        </div>
                                    </fieldset>


                                    <fieldset >
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <input class="button btn largesearch-btn" value="�˻�" type="submit">
                                            </div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>


                    </div>
                </div>
                <!-- ���� �˻��� end  -->

                <div class="col-md-10  pr0 padding-top-40 properties-page">
                    <div class="col-md-10 clear">
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                              <li class="active">
                                 <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                        �ֽż� <i class="fa fa-sort-amount-asc"></i>
                                    </a>

                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                        �������ݼ� <i class="fa fa-sort-numeric-desc"></i>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_percent" data-orderby="property_price" data-order="DESC">
                                        ���ͷ� ������ <i class="fa fa-sort-numeric-desc"></i>
                                    </a>
                                </li>
                            </ul><!--/ .sort-by-list-->

                            <div class="items-per-page">
                                <label for="items_per_page"><b>�������� �Ź� �� :</b></label>
                                <div class="sel">
                                    <select id="items_per_page" name="per_page">
                                        <option value="10">10</option>
                                        <option selected="selected" value="20">20</option>
                                        <option value="30">30</option>

                                    </select>
                                </div><!--/ .sel-->
                            </div><!--/ .items-per-page-->
                        </div>

                        <!-- <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>
                        </div>-->
                        <!--/ .layout-switcher-->
                    </div>

<!--  �Ź���� -->
                    <div class="col-md-10">
    <table border="1">
  <tr>
    <th>&nbsp;NO&nbsp;</th>
    <th>&nbsp;��/��&nbsp;</th>
    <th>&nbsp;��/��/��&nbsp;</th>
    <th>&nbsp;��/��/��&nbsp;</th>
    <th>&nbsp;����&nbsp;</th>
    <th>&nbsp;������&nbsp;</th>
    <th>&nbsp;�ǹ�����&nbsp;</th>
    <th>&nbsp;�������(��)&nbsp;</th>
    <th>&nbsp;�ŷ��ݾ�(����)&nbsp;</th>
    <th>&nbsp;����⵵&nbsp;</th>
    <th>&nbsp;���ͷ�&nbsp;</th>
    <th>&nbsp;������&nbsp;</th>
</tr>
<tr>
<td>1</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>

</tr>

</tr>
<tr>
<td>2</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>

</tr>


</tr>
<tr>
<td>3</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>

</tr>


    </table>

                    </div>

                    <div class="col-md-12">
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">����</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">����</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>

        <!-- Footer area-->
        <div class="footer-area">

          <div class=" footer">
            <div class="container">
              <div class="row">

                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>ȸ��Ұ�</h4>
                    <div class="footer-title-line"></div>

                    <img src="assets/img/mainpage/gosuic_logo3_small.png" alt="" class="wow pulse" data-wow-delay="1s">
                    <p>�ε��� �Ź� �˻� ����Ʈ<br>
                    ������ �ε��� �Ź� ������ �����մϴ�
                    </p>
                    <ul class="footer-adress">
                      <li><i class="pe-7s-map-marker strong"> </i>����� ���ʱ�</li>
                      <li><i class="pe-7s-mail strong"> </i> email@highprofit.com</li>
                      <li><i class="pe-7s-call strong"> </i> 02-3333-3333</li>
                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>�޴�</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-menu">
                      <li><a href="properties.html">�Ź�</a> </li>
                      <li><a href="#">MY�ε���</a> </li>
                      <li><a href="submit-property.html">�ε�������</a></li>
                      <li><a href="contact.html">�Խ���</a></li>
                    </ul>
                  </div>
                </div>
                <!-- class="col-md-3 col-sm-6 wow fadeInRight animated" end -->
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer">
                    <h4>��������</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-blog">
                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-3</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">�������� ����1</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">���� ����1 ...</p>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-02</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">�������� ������2</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">���� ����2...</p>
                        </div>
                      </li>

                      <li>
                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                          <a href="single.html">
                                                      <img src="assets/img/demo/small-proerty-2.jpg">
                                                  </a>
                          <span class="blg-date">2018-01-01</span>

                        </div>
                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                          <h6> <a href="single.html">�������� ������ 3</a></h6>
                          <p style="line-height: 17px; padding: 8px 2px;">���� ����3...</p>
                        </div>
                      </li>


                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                  <div class="single-footer news-letter">
                    <h4>�ȳ�</h4>
                    <div class="footer-title-line"></div>
                    <ul class="footer-menu">
                                    <li><a href="single.html">�̿���</a></li>
                                    <li><a href="#">��������ó����ħ</a> </li>
                                    <li><a href="#">�̸��Ϲ��ܼ����ź�</a></li>
                                    <li><a href="#">å���Ѱ�� ��������</a></li>
                                  </ul>
                  </div>
                </div>

              </div>
              <!--  class="row" end -->

            </div>
        <!-- class="container"  end  -->
          </div>
          <!--class="footer-area" end   -->

          <div class="footer-copy text-center">
            <div class="container">
              <div class="row">
                <div class="pull-left">
                  <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span>
                </div>

              </div>
            </div>
          </div>

        </div>

      <script src="assets/js/modernizr-2.6.2.min.js"></script>
        <script src="assets/js/jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>
        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
