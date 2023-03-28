<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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