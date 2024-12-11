// Add new showtime form submission
document.getElementById('addShowtimeForm').addEventListener('submit', function (e) {
    e.preventDefault();

    // Get form data
    const movie = document.getElementById('movie').value;
    const location = document.getElementById('location').value;
    const dateTime = document.getElementById('dateTime').value;
    const price = document.getElementById('price').value;

    // Add the new showtime to the list
    const showtimeList = document.getElementById('showtimeList');
    const listItem = document.createElement('li');
    listItem.innerHTML = `
        ${movie} - ${location} - ${new Date(dateTime).toLocaleString()} - $${price}
        <div>
            <button onclick="editShowtime(this)">Edit</button>
            <button onclick="deleteShowtime(this)">Delete</button>
        </div>
    `;
    showtimeList.appendChild(listItem);

    // Clear the form
    document.getElementById('addShowtimeForm').reset();
});

// Edit a showtime
function editShowtime(button) {
    alert("Edit functionality coming soon!");
    // Add edit functionality here
}

// Delete a showtime
function deleteShowtime(button) {
    button.parentElement.parentElement.remove();
}


