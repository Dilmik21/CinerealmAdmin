// Movie Data (for simulation purposes)
const movies = [
    { name: "Inception", genre: "Sci-Fi", director: "Christopher Nolan", releaseDate: "2010-07-16" },
    { name: "The Dark Knight", genre: "Action", director: "Christopher Nolan", releaseDate: "2008-07-18" },
    { name: "Interstellar", genre: "Sci-Fi", director: "Christopher Nolan", releaseDate: "2014-11-07" },
];

// Function to render movies in the table
function renderMovies() {
    const tableBody = document.querySelector("#moviesTable tbody");
    tableBody.innerHTML = ""; // Clear existing rows

    movies.forEach((movie, index) => {
        const row = document.createElement("tr");

        row.innerHTML = `
            <td>${movie.name}</td>
            <td>${movie.genre}</td>
            <td>${movie.director}</td>
            <td>${movie.releaseDate}</td>
            <td>
                <button class="btn" onclick="editMovie(${index})">Edit</button>
                <button class="btn" onclick="deleteMovie(${index})">Delete</button>
            </td>
        `;

        tableBody.appendChild(row);
    });
}

// Add New Movie
document.getElementById("addMovieForm").addEventListener("submit", function (e) {
    e.preventDefault();

    const name = document.getElementById("movieName").value;
    const description = document.getElementById("description").value;
    const genre = document.getElementById("genre").value;
    const cast = document.getElementById("cast").value;
    const director = document.getElementById("director").value;
    const language = document.getElementById("language").value;
    const duration = document.getElementById("duration").value;
    const releaseDate = document.getElementById("releaseDate").value;

    // Add the new movie to the list
    movies.push({ name, description, genre, cast, director, language, duration, releaseDate });

    // Clear the form fields
    document.getElementById("addMovieForm").reset();

    // Render updated movie list
    renderMovies();
});

// Edit Movie (For now just logs the movie data)
function editMovie(index) {
    const movie = movies[index];
    alert(`Editing movie: ${movie.name}`);
    // Add your edit logic here (e.g., open a modal or pre-fill a form with movie data)
}

// Delete Movie
function deleteMovie(index) {
    if (confirm("Are you sure you want to delete this movie?")) {
        movies.splice(index, 1);
        renderMovies();
    }
}

// Search Movies by Name, Genre, Director
function filterMovies() {
    const searchTerm = document.getElementById("searchMovie").value.toLowerCase();

    const filteredMovies = movies.filter(movie => {
        return (
            movie.name.toLowerCase().includes(searchTerm) ||
            movie.genre.toLowerCase().includes(searchTerm) ||
            movie.director.toLowerCase().includes(searchTerm)
        );
    });

    renderMovies(filteredMovies);
}

// Initial render
renderMovies();
