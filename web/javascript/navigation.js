document.querySelector('.logout-button').addEventListener('click', function() {
        if (confirm('Are you sure you want to logout?')) {
            // Redirect to logout page or trigger logout function
            window.location.href = 'logout.jsp'; // Replace with your logout URL
        }
    });
