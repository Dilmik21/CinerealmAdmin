document.addEventListener("DOMContentLoaded", () => {
    const searchInput = document.getElementById("searchBookings");
    const bookingsList = document.getElementById("bookingsItems");

    const bookings = [
        {
            customerName: "John Doe",
            movieName: "Avengers: Endgame",
            location: "Theater 1, Downtown",
            showDate: "2024-12-15 18:00",
            seatNumbers: "A1, A2",
            totalPrice: "$20",
            appliedDeals: "10% off",
        },
        {
            customerName: "Jane Smith",
            movieName: "Inception",
            location: "Theater 3, Uptown",
            showDate: "2024-12-17 20:00",
            seatNumbers: "B1, B2",
            totalPrice: "$25",
            appliedDeals: "No deal",
        }
    ];

    const updateBookingsList = () => {
        bookingsList.innerHTML = "";
        bookings.forEach((booking, index) => {
            const li = document.createElement("li");
            li.innerHTML = `
                <div class="booking-info">
                    <p><strong>Customer:</strong> ${booking.customerName}</p>
                    <p><strong>Movie:</strong> ${booking.movieName}</p>
                    <p><strong>Location:</strong> ${booking.location}</p>
                    <p><strong>Show Date/Time:</strong> ${booking.showDate}</p>
                    <p><strong>Seat Numbers:</strong> ${booking.seatNumbers}</p>
                    <p><strong>Total Price:</strong> ${booking.totalPrice}</p>
                    <p><strong>Applied Deals:</strong> ${booking.appliedDeals}</p>
                </div>
                <button class="cancel-btn" onclick="cancelBooking(${index})">Cancel</button>
            `;
            bookingsList.appendChild(li);
        });
    };

    // Cancel Booking
    window.cancelBooking = (index) => {
        const reason = prompt("Please provide a reason for the cancellation:");

        if (reason) {
            bookings.splice(index, 1);
            alert(`Booking canceled successfully. Reason: ${reason}`);
            updateBookingsList();
        }
    };

    // Search and filter bookings
    searchInput.addEventListener("input", (e) => {
        const searchTerm = e.target.value.toLowerCase();
        Array.from(bookingsList.children).forEach((li) => {
            const text = li.textContent.toLowerCase();
            li.style.display = text.includes(searchTerm) ? "" : "none";
        });
    });

    // Initial load of bookings
    updateBookingsList();
});



