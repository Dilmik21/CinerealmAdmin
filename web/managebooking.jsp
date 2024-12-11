<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookings Management</title>
    <link rel="stylesheet" href="css/managebooking.css">
</head>
<body>

    <div class="main-content">
        <h1>Bookings Management</h1>

        <!-- Search & Filter -->
        <div class="search-filter">
            <input type="text" id="searchBookings" placeholder="Search by Movie, Date, Location, or User">
        </div>

        <!-- Bookings List -->
        <div class="bookings-list">
            <h2>All Bookings</h2>
            <ul id="bookingsItems">
                <!-- Dynamically Generated Bookings List -->
            </ul>
        </div>
    </div>

    <script src="javascript/managebooking.js"></script>
</body>
</html>
