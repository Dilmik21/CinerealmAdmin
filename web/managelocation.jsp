<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Locations Management</title>
    <link rel="stylesheet" href="css/managelocation.css">
</head>
<body>
    <div class="main-content">
        <h1>Locations Management</h1>
        
        <!-- Add Location Form -->
        <div class="form-section">
            <h2>Add New Location</h2>
            <form id="locationForm">
                <label for="city">City</label>
                <input type="text" id="city" name="city" required>

                <label for="area">Area</label>
                <input type="text" id="area" name="area" required>

                <label for="address">Address</label>
                <textarea id="address" name="address" rows="3" required></textarea>

                <label for="contact">Contact Information</label>
                <input type="text" id="contact" name="contact" required>

                <label for="map">Map Integration</label>
                <input type="text" id="map" name="map" placeholder="Google Maps URL" required>

                <button type="submit" class="btn">Add Location</button>
            </form>
        </div>

        <!-- Locations List -->
        <div class="locations-list">
            <h2>Manage Locations</h2>
            <input type="text" id="searchLocations" placeholder="Search Locations">

            <ul id="locations">
                <!-- Dynamically Generated List -->
            </ul>
        </div>
    </div>
    <script src="javascript/managelocation.js"></script>
</body>
</html>

