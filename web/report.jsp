<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports Management</title>
    <link rel="stylesheet" href="css/report.css">
</head>
<body>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Reports</h1>

        <!-- Revenue Reports Section -->
        <section id="revenue-reports" class="report-section">
            <h2>Revenue Reports</h2>
            <div class="options">
                <button class="report-btn" onclick="fetchReport('byMovie')">By Movie</button>
                <button class="report-btn" onclick="fetchReport('byLocation')">By Location</button>
                <button class="report-btn" onclick="fetchReport('byDate')">By Date Range</button>
            </div>
            <div id="revenue-report-result" class="report-result"></div>
        </section>

        <!-- Booking Trends Section -->
        <section id="booking-trends" class="report-section">
            <h2>Booking Trends</h2>
            <div class="options">
                <button class="report-btn" onclick="fetchTrend('popularMovies')">Popular Movies</button>
                <button class="report-btn" onclick="fetchTrend('peakTimes')">Peak Booking Times</button>
            </div>
            <div id="booking-trend-result" class="report-result"></div>
        </section>

        <!-- Deal Performance Section -->
        <section id="deal-performance" class="report-section">
            <h2>Deal Performance Reports</h2>
            <div class="options">
                <button class="report-btn" onclick="fetchDealReport('mostUsed')">Most Used Deals</button>
                <button class="report-btn" onclick="fetchDealReport('revenueImpact')">Revenue Impact</button>
            </div>
            <div id="deal-report-result" class="report-result"></div>
        </section>

        <!-- Export Options Section -->
        <section id="export-options" class="report-section">
            <h2>Export Options</h2>
            <button class="export-btn" onclick="exportReport('pdf')">Export as PDF</button>
            <button class="export-btn" onclick="exportReport('excel')">Export as Excel</button>
        </section>
    </div>

    <script src="javascript/report.js"></script>
</body>
</html>

