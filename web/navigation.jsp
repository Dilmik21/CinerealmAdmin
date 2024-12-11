<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineRealm Admin</title>
    <link rel="stylesheet" href="css/navigation.css"> <!-- Link to the external CSS file -->
</head>
<body>
    <div class="sidebar">
        <!-- Logo -->
        <div class="logo">
            <h1>CineRealm Admin</h1>
            <p>Management System</p>
        </div>

        <!-- Navigation Links -->
        <ul class="nav-links">
            <li><a href="http://localhost:8080/CinerealmAdmin/dashboard.jsp">Dashboard</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/managemovie.jsp">Manage Movies</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/manageshow.jsp">Manage Showtimes</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/managedeal.jsp">Manage Deals</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/managelocation.jsp">Manage Locations</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/managenews.jsp">Manage News</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/managebooking.jsp">Manage Bookings</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/manageuser.jsp">User Management</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/report.jsp">Reports</a></li>
            <li><a href="http://localhost:8080/CinerealmAdmin/settings.jsp">Settings</a></li>
        </ul>

         <!-- Profile Dropdown with Logout Button -->
        <div class="profile">
           <img src="" alt="Admin Avatar">
           <p>Admin Name</p>
           <a href="#">My Profile</a>
           <br><br> <!-- Spacing -->
           <button class="logout-button">Logout</button>
        </div>
    </div>
    <script src="javascript/navigation.js"></script>
</body>
</html>
