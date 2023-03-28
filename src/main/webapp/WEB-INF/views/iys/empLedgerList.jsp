<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Charts / Chart.js - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

 

</head>

<body>
  <main id="main" class="main">

    <section>
      <div class="container">
        <div id="grid"></div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="mt-5">
    <section>
      <div class="container">
          <div class="text-center text-black">
            <span>&copy; <span id="currentYear"></span>. IYF All rights reserved</span>
          </div>
          <a href="#" class="btn btn-outline-secondary float-end">맨 위로 가기</a>
      </div>
    </section>
  </footer>
  <script>
    const currentYear = new Date().getFullYear();
    document.getElementById("currentYear").textContent = currentYear;
  </script>


  <script>

    $(document).ready(function() {
        const gridData = [
            {
                id: '10012',
                city: 'Seoul',
                country: 'South Korea'
            },
            {
                id: '10013',
                city: 'Tokyo',
                country: 'Japan'
            },
            {
                id: '10014',
                city: 'London',
                country: 'England'
            },
            {
                id: '10015',
                city: 'Ljubljana',
                country: 'Slovenia'
            },
            {
                id: '10016',
                city: 'Reykjavik',
                country: 'Iceland'
            },
            {
                id: '10012',
                city: 'Seoul',
                country: 'South Korea'
            },
            {
                id: '10013',
                city: 'Tokyo',
                country: 'Japan'
            },
            {
                id: '10014',
                city: 'London',
                country: 'England'
            },
            {
                id: '10015',
                city: 'Ljubljana',
                country: 'Slovenia'
            },
            {
                id: '10016',
                city: 'Reykjavik',
                country: 'Iceland'
            },
            {
                id: '10012',
                city: 'Seoul',
                country: 'South Korea'
            },
            {
                id: '10013',
                city: 'Tokyo',
                country: 'Japan'
            },
            {
                id: '10014',
                city: 'London',
                country: 'England'
            },
            {
                id: '10015',
                city: 'Ljubljana',
                country: 'Slovenia'
            },
            {
                id: '10016',
                city: 'Reykjavik',
                country: 'Iceland'
            },
        ];

        grid(gridData);
    });
    
    function grid(gridData) {
        const grid = new tui.Grid({
            el: document.querySelector('#grid'),
            data: gridData,
            scrollX: false,
            scrollY: false,
            columns: [
            {
                header: '아이디',
                name: 'id'
            },
            {
                header: '도시',
                name: 'city'
            },
            {
                header: '국가',
                name: 'country'
            }
            ]
        });
    }

    
  </script>

</body>

</html>