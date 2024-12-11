<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <link rel="stylesheet" href="css/manageuser.css">
</head>
<body>
    <!-- Main Content -->
    <div class="main-content">
        <h1>User Management</h1>

        <!-- User List -->
        <div class="user-list">
            <h2>Users</h2>
            <div class="search-filter">
                <input type="text" id="searchUsers" placeholder="Search by Name, Email, Status">
            </div>
            <table id="userTable">
                <thead>
                    <tr>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>Contact Number</th>
                        <th>Bookings Made</th>
                        <th>Account Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Users will be displayed here -->
                </tbody>
            </table>
        </div>

        <!-- Admin Management -->
        <div class="admin-management">
            <h2>Admin Management</h2>
            <div class="admin-actions">
                <button id="addAdminBtn">Add Admin</button>
                <button id="manageRolesBtn">Manage Roles</button>
            </div>
            <table id="adminTable">
                <thead>
                    <tr>
                        <th>Admin Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Admins will be displayed here -->
                </tbody>
            </table>
        </div>
    </div>

    <script src="javascript/manageuser.js"></script>
</body>
</html>
