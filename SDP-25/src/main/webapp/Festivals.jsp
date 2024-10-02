<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festivals Search</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    body {
        background-image: url('https://t4.ftcdn.net/jpg/04/82/37/47/360_F_482374734_Zl8RoctbfWGgPNgdy82WygIKrQ09uKCj.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100vh; /* Ensure full viewport height */
        padding-top: 50px; /* Adjust based on your navbar height */
    }
</style>
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4 text-light">Search Festivals</h2>
        <form class="form-inline mb-4">
            <input class="form-control mr-sm-2" type="text" id="searchInput" placeholder="Search festival...">
            <button class="btn btn-primary" type="button" onclick="searchFestival()">Search</button>
        </form>
        <div id="festivalDetails" class="text-light"></div>
    </div>

    <script>
        function searchFestival() {
            var searchQuery = document.getElementById('searchInput').value.trim();
            if (searchQuery === "") {
                alert("Please enter a festival name to search.");
                return;
            }
            
            // Perform AJAX call to fetch festival details
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        document.getElementById('festivalDetails').innerHTML = xhr.responseText;
                    } else {
                        alert('Error: ' + xhr.status);
                    }
                }
            };
            
            xhr.open('GET', 'festivals_data.jsp?festival=' + encodeURIComponent(searchQuery), true);
            xhr.send();
        }
    </script>
</body>
</html>
