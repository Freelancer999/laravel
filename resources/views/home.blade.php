@extends('layouts.app')

@section('content')
<!-- Half Page Image Background Carousel Header -->
    <div class="slider">
	      	<div class="slider-wrapper theme-default">
	            <div id="slider" class="nivoSlider">
	                <!--<img src="images/bannerad0.jpg" data-thumb="images/1.jpg" alt="" />
	                <img src="images/bannerad1.jpg" data-thumb="images/2.jpg" alt="" />
	                <img src="images/bannerad2.jpg" data-thumb="images/3.jpg" alt="" />
	                <img src="images/bannerad3.jpg" data-thumb="images/4.jpg" alt="" />
	                <img src="images/bannerad4.jpg" data-thumb="images/5.jpg" alt="" />-->
                    <img src="{{ URL::asset('assets/img/slider/p01.jpg') }}"  alt="" />
                    <img src="{{ URL::asset('assets/img/slider/p02.jpg') }}"  alt="" />
                    <img src="{{ URL::asset('assets/img/slider/p03.jpg') }}"  alt="" />
	                <img src="{{ URL::asset('assets/img/slider/p04.jpg') }}"  alt="" />
                    

	                
	                <!--<img src="images/Bhimsandesh C.H.S. At Mulund.jpg"  alt="" />-->
	            </div>
				
	        </div>
   		</div>
      <div class="container" id="content">
	    <div class="row">
		  <div class="col-md-3 wow animated slideInLeft">
			@if (Auth::guest())
			<div class="siderHeader">LOGIN</div>
			<div class="divider"></div>
			<br/>
			<div class="logProcessing"></div>
		     <form id="frmLogin" autocomplete="off" method="POST">
			   {!! csrf_field() !!}
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<select class="form-control" name="type">
							<option value="">Select Login Type</option>
							<option value="E">Exibitor</option>
							<option value="B">Buyer</option>
						</select>
					</div>
                     <span class="help-block"></span>
                               
					
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
						<input type="email" class="form-control" name="email" placeholder="email address">
					</div>
                     <span class="help-block"></span>
                                        
                                    
                              
										
					<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
						<input  type="password" class="form-control" name="password" placeholder="Password">
					</div>
                    <span class="help-block"></span>

					<button class="btn btn-lg btn-info btn-block" type="button" id = 'btnLogin' style="border-radius:0px;">Login</button>
				</form>
				<div class="col-md-12">
				<p class="omb_forgotPwd">
					<a href="#" class="pull-right" style="margin-top:-10px;">Forgot password?</a>
				</p>
			</div>
			@else
			  @if (Auth::user()->user_type == 'B' )
				Welcome Buyer, {{ Auth::user()->fname }}&nbsp; 
				<a href="{{ URL::to('/logout') }}" class="btn btn-info">
                   <span class="glyphicon glyphicon-log-out"></span> Log out
                 </a>
			  @elseif (Auth::user()->user_type == 'E' )
			    Welcome {{ Auth::user()->fname }}&nbsp;
				<a href="{{ URL::to('/logout') }}" class="btn btn-info">
                   <span class="glyphicon glyphicon-log-out"></span> Log out
                 </a>
			  @endif
			@endif
			<br/>
			<div class="black-diveider"></div>
			
			
			<a href=""><img src="assets/img/678120-calendar-clock-512.png" class="img img-responsive event-img"/></a>

			<div class="black-diveider"></div>
			
			<a href=""><img src="assets/img/images.jpg" style="height:100px;width:200px;" class="img img-responsive event-img"/></a>

			<div class="black-diveider"></div>
			<div class="siderHeader">DOWNLOAD</div>
			<div class="divider"></div>
			<br/>
			<ul class="download-link">
			  <li><span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="" class="btn btn-link">E-NewsLetter</a></li>
			  <li><span class="fa fa-book"></span>&nbsp;<a href="" class="btn btn-link">E-Broucher</a></li>
			  <li><span class="fa fa-user"></span>&nbsp;<a href="" class="btn btn-link">Exhibitor Directory</a></li>
			  <li><span class="fa fa-user"></span>&nbsp;<a href="" class="btn btn-link">Buyer Directory</a></li>
			</ul>
            <div class="bottom-black-diveider"></div>
		  </div>
		  <div class="col-md-6 text-justify wow animated fadeIn">
		    <p style="margin-bottom:20px;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
			Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<div class="row"><div class="col-md-5"><a href="#"><img src="{{ URL::asset('assets/img/indian-exhibitor-ban.gif') }}" /></a></div><div class="col-md-6"><a href="#"><img src="{{ URL::asset('assets/img/overseas-buyers-ban.gif') }}" /></a></div></div>
		  </div>
		  <div class="col-md-3 wow animated slideInRight">
            <!-----right-sidebar----->
				<div >
					<div class="right-inner-addon">
						<i class="fa fa-search"></i>
						<input type="search"
							   class="form-control" 
							   placeholder="Search" />
					</div>
				</div>
				<br/>
				
				<div class="siderHeader">EXIBITORS</div>
			<div class="divider"></div>
			
			<div class="scrollbar" id="style-4">
      <div class="force-overflow">
	 <marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();">
	   <table class="table exibitors" style="width:97%;">
	   @foreach($exibitors as $key => $value)
         <tr>
		   <td><div class="row"><div class="col-md-4"><img src="assets/img/images1.jpg" class="img-responsive"/></div> <div class="col-md-6"><small>{{ $value->fname }} {{ $value->lname }}<br/><span style="font-size:9pt;"><span class="fa fa-building"></span> {{ $value->company_name }}</span><br/><span style="font-size:8pt;"><img src="{{ URL::asset('assets/img/city-icon.png') }}" style="height:12px;width:12px;"/> {{ $value->city }}, {{ $value->pin_code }}</span></small></div></td>
		 </tr>
	   @endforeach 
	   </table>
	  </marquee>
	  </div>
    </div> 
	<a href="#"><img src="{{ URL::asset('assets/img/Untitled-1-Recovered.png') }}" style="width:260px;height:70px;"/></a><br/>

	<a href="#"><img src="{{ URL::asset('assets/img/buyer-registration.png') }}" style="width:260px;height:70px;"/></a><br/>
    <center><a href="http://www.srtepc.org" target="_blank" title="www.srtepc.org"><img src="assets/img/srtepc.jpg" style="width:200px;margin-bottom:20px;"/></a></center>
	
	<div class="row"><div class="col-md-2"><span class="fa fa-phone call-icon"></span></div><div class="col-md-9 call-no">&nbsp;&nbsp;+91-xxx-xxxxxxx</div></div>

	<br/>
	<div class="row"><div class="col-md-2"><span class="fa fa-envelope envelope-icon"></span></div><div class="col-md-9 call-no">&nbsp;&nbsp;info@sourceindia.com</div></div>

			<!----/right-sideber------>
	
		  </div>
		  
		</div>
	  </div>
   </div>
   <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
	<script type="text/javascript" src="{{ URL::asset('assets/js/nivo.slider.js') }}"></script>
	<script src="{{ URL::asset('assets/js/wow.js') }}"></script>
	<script src="{{ URL::asset('assets/js/animate.js') }}"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
		$('.nivo-controlNav').hide();
    });
    $(document).ready(function() {
	$('.slider').mouseenter(function() {
       $('.nivo-controlNav').fadeIn();
	});
    $('.slider').mouseleave(function() {
       $('.nivo-controlNav').fadeOut();
	});
	});

    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       100,
        callback:     function(box) {
          console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
      }
    );
    wow.init();


//Login Form Submit
	$(document).on("click", "#btnLogin", function(){
        var form = $('#frmLogin').serialize();
          $.ajax( {
			url:"{{ URL::to('/login') }}",
			data:form,
			type:"POST",
			success: function(data){
			    if(data === "success") {
			      $('.logProcessing').removeClass('alert alert-danger');
			      $('.logProcessing').addClass('alert alert-success');
	              $('.logProcessing').html("Login Successfully");
				  window.location.href=window.location.href;
				}
				else {
				   $('.logProcessing').removeClass('alert alert-success');
				   $('.logProcessing').addClass('alert alert-danger');
				   //var error = errorMsg.split(",");
				   //alert(error);
					$('.logProcessing').html(data);
				}
			},
		   });
     });
</script>
@endsection
