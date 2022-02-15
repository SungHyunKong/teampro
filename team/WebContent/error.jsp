<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>에러페이지</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/modules/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/modules/fontawesome/css/all.min.css">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
</head>

<body>
  <div id="app">
      <div class="container mt-5">
        <div class="page-error">
          <div class="page-inner">
            <h1>error</h1>
            <div class="page-description">
              	찾을수 없는 페이지 입니다.<br>
              	응 해킹 못해 화나쥬?
            </div>
            <div class="page-search">
                <div class="form-group floating-addon floating-addon-not-append">
                  <div class="input-group">
                    </div>
                  </div>
                </div>
              <div class="mt-3">
                <a href="javascript:history.back();">이전 페이지로 돌아가기</a>
              </div>
              <div class="mt-3">
                <a href="index.html">홈으로 돌아가기</a>
              </div>
            </div>
          </div>
        </div>
        <div class="simple-footer mt-5">
          4조  남성호르몬 &copy; 김태완 정성현 공성현 심준수 한광진
        </div>
      </div>

  <!-- General JS Scripts -->
  <script src="assets/modules/jquery.min.js"></script>
  <script src="assets/modules/popper.js"></script>
  <script src="assets/modules/tooltip.js"></script>
  <script src="assets/modules/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/modules/nicescroll/jquery.nicescroll.min.js"></script>
  <script src="assets/modules/moment.min.js"></script>
  <script src="assets/js/stisla.js"></script>
  
  <!-- JS Libraies -->

  <!-- Page Specific JS File -->
  
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <script src="assets/js/custom.js"></script>
</body>
</html>