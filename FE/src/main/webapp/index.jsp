<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>Freunde</title>

<link rel="shortcut icon" href="assets/images/gt_favicon.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="resources/assets/css/main.css">

<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-route.min.js"></script>
<script src="resources/js/angular-cookies.min.js"></script>
</head>
<body ng-app="myApp" class="container" ng-controller="UserProfileController as ctrl"  background="resources/assets/images/1.jpg">
<img src="resources/assets/images/mac.jpg" alt="Mountain View" align="center"; style="width:100%;height:600px;">
	<div ng-show="currentUser.useremail==undefined">
		<div ng-include="'v_common/common.html'"></div>
	</div>
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Student'">
			<div ng-include="'v_common/userview.html'"></div>
		</div>
	</div>	
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Admin'">
			<div ng-include="'v_common/adminview.html'"></div>
		</div>
	</div>
	<div ng-show="currentUser.useremail!==undefined">
		<div ng-show="currentUser.currentrole=='Role_Alumin'">
			<div ng-include="'v_common/userview.html'"></div>
		</div>
	</div>	
	
	<div class="jumbotran">
		<div class="container">
			<div ng-view></div>
		</div>
	</div>

	<br/><br/>
	
<nav class="navbar navbar-inverse navbar-fixed-bottom ">
  <div class="container-fluid">
    <div class="navbar-footer">
      <a class="navbar-text"> <div ng-include="'v_common/footer.html'"> </div>
        </a>
        </div>
        </div>
        </nav> 

 
 
        
        
        
        

  




	<script src="resources/assets/js/headroom.min.js"></script>
	<script src="resources/assets/js/jQuery.headroom.min.js"></script>
	<script src="resources/assets/js/template.js"></script>

	<script src="app.js"></script>
	<script src="v_home/HomeController.js"></script>
	<script src="v_user/UserProfileController.js"></script>
	<script src="v_user/UserProfileService.js"></script>
	<script src="v_blog/BlogController.js"></script>
	<script src="v_blog/BlogService.js"></script>
	<script src="v_forum/ForumController.js"></script>
	<script src="v_forum/ForumService.js"></script>
	<script src="v_friend/FriendController.js"></script>
	<script src="v_friend/FriendService.js"></script>
	<script src="v_job/JobController.js"></script>
	<script src="v_job/JobService.js"></script>

	<script src="v_chat/ChatController.js"></script>
	<script src="v_chat/ChatService.js"></script>
	<script src="v_chat/sockjs.min.js"></script>
	<script src="v_chat/stomp.min.js"></script>
	<script src="v_chat/lodash.min.js"></script>
</body>
</html>