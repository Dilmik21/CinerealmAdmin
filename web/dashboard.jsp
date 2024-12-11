<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <link rel="stylesheet" href="css/dashboard.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <div class="main-content">
    <h1 class="section-title">Dashboard</h1>

    <!-- Overview Section -->
    <section class="statistics">
      <h2 class="section-title">Overview / Statistics</h2>
      <div>
        <p><strong>Total Movies:</strong> --</p>
        <p><strong>Total Showtimes:</strong> --</p>
        <p><strong>Total Bookings:</strong> --</p>
        <p><strong>Total Revenue:</strong> --</p>
        <p><strong>Active Users:</strong> --</p>
      </div>
    </section>

    <!-- Quick Links -->
    <section class="quick-links">
      <h2 class="section-title">Quick Links</h2>
      <center> <div>
        <a href="#" class="btn">Add New Movie</a>
        <a href="#" class="btn">Add Showtime</a>
        <a href="#" class="btn">Manage Deals</a>
        <a href="#" class="btn">Manage Locations</a>
        <a href="#" class="btn">Add News</a>
          </div></center>
    </section>

    <!-- Recent Activities -->
    <section class="recent-activities">
      <h2 class="section-title">Recent Activities</h2>
      <ul>
        <li>Latest Booking: User X booked "Avengers".</li>
        <li>Recently Added Movie: "Guardians of the Galaxy".</li>
        <li>New Deal: 20% Off on Evening Shows.</li>
      </ul>
    </section>

    <!-- Performance Metrics -->
    <section class="performance-metrics">
      <h2 class="section-title">Performance Metrics</h2>
      <div class="deals-card">
        <h3>Booking Trends</h3>
        <canvas id="bookingTrendsChart"></canvas>
      </div>
    </section>
  </div>
  <script src="javascript/dashboard.js"></script>
</body>
</html>

