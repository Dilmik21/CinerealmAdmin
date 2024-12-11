<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Showtimes Management</title>
    <link rel="stylesheet" href="css/manageshow.css">
</head>
<body>
    
    <div class="main-content">
        <section id="showtimes">
            <h1>Showtimes Management</h1>
            
            <!-- Add New Showtime Form -->
            <div class="form-section">
                <h2>Add New Showtime</h2>
                <form id="addShowtimeForm">
                    <label for="movie">Movie Selection:</label>
                    <select id="movie" name="movie" required>
                        <option value="">Select a Movie</option>
                        <option value="movie1">Movie 1</option>
                        <option value="movie2">Movie 2</option>
                    </select>

                    <label for="location">Location Selection:</label>
                    <select id="location" name="location" required>
                        <option value="">Select a Location</option>
                        <option value="location1">Theater 1</option>
                        <option value="location2">Theater 2</option>
                    </select>

                    <label for="dateTime">Date & Time:</label>
                    <input type="datetime-local" id="dateTime" name="dateTime" required>

                    <label for="price">Ticket Price:</label>
                    <input type="number" id="price" name="price" placeholder="Enter ticket price" required>

                    <button type="submit" class="btn">Add Showtime</button>
                </form>
            </div>

            <!-- Showtimes List -->
            <div class="showtime-list">
                <h2>View/Edit/Delete Showtimes</h2>
                <input type="text" id="search" placeholder="Search Showtimes...">
                <ul id="showtimeList">
                    <!-- Showtimes will be added dynamically -->
                </ul>
            </div>
        </section>
    </div>

    <script src="javascript/manageshow.js"></script>
</body>
</html>
