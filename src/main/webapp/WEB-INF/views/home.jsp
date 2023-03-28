<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>메인홈페이지: IYF 인력기초원장/매출원장</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- NiceAdmin: Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap/css/bootstrap.min.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap-icons/bootstrap-icons.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/boxicons/css/boxicons.min.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.snow.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.bubble.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/remixicon/remixicon.css"
    rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/simple-datatables/style.css"
    rel="stylesheet">

  <!-- NiceAdmin: Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/css/style.css" rel="stylesheet">

  <!-- toast-grid -->
  <link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />

  <!-- jquery -->
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

  <!-- toast-grid -->
  <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

</head>

<body>

  <!-- ======= Header ======= -->
  <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <jsp:include page="/WEB-INF/views/sidebar.jsp"></jsp:include>
  <!-- End Sidebar-->

  <main id="main" class="main">
    <div class="checkbox-container">
        <label>
          <input type="checkbox" name="column" value="emp_pool_id" checked>
          인력풀번호
        </label>
        <label>
          <input type="checkbox" name="column" value="sourcing_manager" checked>
          소싱담당자
        </label>
        <label>
          <input type="checkbox" name="column" value="name" checked>
          이름
        </label>
        <label>
          <input type="checkbox" name="column" value="phonenumber" checked>
          전화번호
        </label>
        <label>
          <input type="checkbox" name="column" value="birthdate" checked>
          생년월일
        </label>
        <label>
          <input type="checkbox" name="column" value="email" checked>
          이메일
        </label>
        <label>
          <input type="checkbox" name="column" value="address" checked>
          주소
        </label>
        <label>
          <input type="checkbox" name="column" value="education" checked>
          학력
        </label>
        <label>
          <input type="checkbox" name="column" value="school_name" checked>
          학교명
        </label>
        <label>
          <input type="checkbox" name="column" value="major" checked>
          학과
        </label>
        <label>
          <input type="checkbox" name="column" value="career_years" checked>
          경력
        </label>
        <label>
          <input type="checkbox" name="column" value="career_field" checked>
          분야
        </label>
        <label>
          <input type="checkbox" name="column" value="career_level" checked>
          등급
        </label>
        <label>
          <input type="checkbox" name="column" value="project_assign" checked>
          투입여부
        </label>
    </div>

    <section>
      <div class="container">
        <div id="grid"></div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>


  <script>

    $(document).ready(function () {

      grid();
      
    });

    function grid() {
      const columns = [
        {
          header: '인력풀번호',
          name: 'emp_pool_id'
        },
        {
          header: '소싱담당자',
          name: 'sourcing_manager'
        },
        {
          header: '이름',
          name: 'name'
        },
        {
          header: '전화번호',
          name: 'phonenumber'
        },
        {
          header: '생년월일',
          name: 'birthdate'
        },
        {
          header: '이메일',
          name: 'email'
        },
        {
          header: '주소',
          name: 'address'
        },
        {
          header: '학력',
          name: 'education'
        },
        {
          header: '학교명',
          name: 'school_name'
        },
        {
          header: '학과',
          name: 'major'
        },
        {
          header: '경력',
          name: 'career_years'
        },
        {
          header: '분야',
          name: 'career_field'
        },
        {
          header: '등급',
          name: 'career_level'
        },
        {
          header: '현재투입여부',
          name: 'project_assign'
        },
      ]
      $.ajax({
        url: "empPoolList.ajax",
        method: "GET",
        success: function (empPoolList) {

          const grid = new tui.Grid({
            el: document.querySelector('#grid'),
            scrollX: true,
            scrollY: true,
            data: empPoolList,
            columns: columns
          });

          $('input[name=column]').change(function(e) {
            if (e.target.checked) {
                grid.showColumn(e.target.value)
            } else {
                grid.hideColumn(e.target.value)
            }
          })

        }
      });
      
    }


  </script>


  <!-- Vendor JS Files -->
  <script
    src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script
    src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/chart.js/chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.min.js"></script>
  <script
    src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script
    src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/php-email-form/validate.js"></script>

  <!-- NiceAdmin: Template Main JS File -->
  <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/js/main.js"></script>

</body>

</html>