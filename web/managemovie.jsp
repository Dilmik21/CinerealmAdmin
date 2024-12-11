<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies Management</title>
    <link rel="stylesheet" href="css/managemovie.css">
</head>
<body>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Movies Management</h1>

        <!-- Add New Movie -->
        <section id="add-movie" class="section">
            <h2>Add New Movie</h2>
            <form id="addMovieForm">
                <div class="form-group">
                    <label for="movieName">Movie Name</label>
                    <input type="text" id="movieName" placeholder="Enter Movie Name" required>
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" placeholder="Enter Description" required></textarea>
                </div>
                <div class="form-group">
                    <label for="genre">Genre</label>
                    <input type="text" id="genre" placeholder="Enter Genre" required>
                </div>
                <div class="form-group">
                    <label for="cast">Cast</label>
                    <input type="text" id="cast" placeholder="Enter Cast" required>
                </div>
                <div class="form-group">
                    <label for="director">Director</label>
                    <input type="text" id="director" placeholder="Enter Director" required>
                </div>
                <div class="form-group">
                    <label for="language">Language</label>
                    <input type="text" id="language" placeholder="Enter Language" required>
                </div>
                <div class="form-group">
                    <label for="duration">Duration (minutes)</label>
                    <input type="number" id="duration" placeholder="Enter Duration" required>
                </div>
                <div class="form-group">
                    <label for="releaseDate">Release Date</label>
                    <input type="date" id="releaseDate" required>
                </div>
                <div class="form-group">
                    <label for="poster">Upload Poster</label>
                    <input type="file" id="poster" accept="image/*" required>
                </div>
                <button type="submit" class="btn">Add Movie</button>
            </form>
        </section>

        <!-- Manage Movies -->
        <section id="manage-movies" class="section">
            <h2>Manage Movies</h2>
            <div class="search-filter">
                <input type="text" id="searchMovie" placeholder="Search Movies by Name, Genre, Director">
                <button class="btn" onclick="filterMovies()">Search</button>
            </div>
            <table id="moviesTable">
                <thead>
                    <tr>
                        <th>Movie Name</th>
                        <th>Genre</th>
                        <th>Director</th>
                        <th>Release Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Movie rows will be populated here -->
                </tbody>
            </table>
        </section>
    </div>

    <script src="javascript/managemovie.js"></script>
</body>
</html>
