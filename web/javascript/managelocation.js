document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("locationForm");
    const locationsList = document.getElementById("locations");
    const searchInput = document.getElementById("searchLocations");

    const locations = [];

    // Add new location
    form.addEventListener("submit", (e) => {
        e.preventDefault();

        const city = document.getElementById("city").value;
        const area = document.getElementById("area").value;
        const address = document.getElementById("address").value;
        const contact = document.getElementById("contact").value;
        const map = document.getElementById("map").value;

        const location = { city, area, address, contact, map };
        locations.push(location);

        updateLocationsList();
        form.reset();
    });

    // Update locations list
    const updateLocationsList = () => {
        locationsList.innerHTML = "";
        locations.forEach((location, index) => {
            const li = document.createElement("li");
            li.innerHTML = `
                <div>
                    <p><strong>City:</strong> ${location.city}</p>
                    <p><strong>Area:</strong> ${location.area}</p>
                    <p><strong>Address:</strong> ${location.address}</p>
                    <p><strong>Contact:</strong> ${location.contact}</p>
                </div>
                <button onclick="deleteLocation(${index})">Delete</button>
            `;
            locationsList.appendChild(li);
        });
    };

    // Delete location
    window.deleteLocation = (index) => {
        locations.splice(index, 1);
        updateLocationsList();
    };

    // Search locations
    searchInput.addEventListener("input", (e) => {
        const searchTerm = e.target.value.toLowerCase();
        Array.from(locationsList.children).forEach((li) => {
            const text = li.textContent.toLowerCase();
            li.style.display = text.includes(searchTerm) ? "" : "none";
        });
    });
});



