document.addEventListener('DOMContentLoaded', () => {
  // Example: Fetch statistics dynamically
  const updateStatistics = () => {
    const stats = {
      totalMovies: 120,
      totalShowtimes: 320,
      totalBookings: 15000,
      totalRevenue: 250000,
      activeUsers: 1200
    };

    document.querySelector('.statistics').innerHTML = `
      <p><strong>Total Movies:</strong> ${stats.totalMovies}</p>
      <p><strong>Total Showtimes:</strong> ${stats.totalShowtimes}</p>
      <p><strong>Total Bookings:</strong> ${stats.totalBookings}</p>
      <p><strong>Total Revenue:</strong> $${stats.totalRevenue.toLocaleString()}</p>
      <p><strong>Active Users:</strong> ${stats.activeUsers}</p>
    `;
  };

  updateStatistics(); // Initialize statistics

  // Example: Handle Quick Links Clicks
  document.querySelectorAll('.quick-links .btn').forEach(button => {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      alert(`Navigating to ${button.textContent}`);
    });
  });

  // Example: Render a Chart for Booking Trends
  const renderChart = () => {
    const ctx = document.getElementById('bookingTrendsChart').getContext('2d');
    new Chart(ctx, {
      type: 'line',
      data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June'],
        datasets: [{
          label: 'Bookings',
          data: [120, 150, 180, 200, 170, 220],
          backgroundColor: 'rgba(251, 176, 59, 0.2)',
          borderColor: '#fbb03b',
          borderWidth: 2,
          tension: 0.4
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            display: true,
            position: 'top'
          }
        }
      }
    });
  };

  renderChart(); // Initialize Chart
});


