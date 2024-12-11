// Sample Data for Users and Admins
const users = [
    { name: 'John Doe', email: 'john@example.com', contact: '1234567890', bookings: 5, status: 'Active' },
    { name: 'Jane Smith', email: 'jane@example.com', contact: '0987654321', bookings: 3, status: 'Inactive' },
];

const admins = [
    { name: 'Admin One', email: 'admin1@example.com', role: 'Super Admin' },
    { name: 'Admin Two', email: 'admin2@example.com', role: 'Editor' },
];

// DOM Elements
const userTable = document.getElementById('userTable').getElementsByTagName('tbody')[0];
const adminTable = document.getElementById('adminTable').getElementsByTagName('tbody')[0];
const searchUsers = document.getElementById('searchUsers');

// Display Users in the table
function displayUsers() {
    userTable.innerHTML = ''; // Clear table

    users.forEach((user, index) => {
        const row = userTable.insertRow();
        row.innerHTML = `
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.contact}</td>
            <td>${user.bookings}</td>
            <td>${user.status}</td>
            <td>
                <button class="edit-btn" onclick="editUser(${index})">Edit</button>
                <button class="delete-btn" onclick="deleteUser(${index})">Delete</button>
            </td>
        `;
    });
}

// Display Admins in the table
function displayAdmins() {
    adminTable.innerHTML = ''; // Clear table

    admins.forEach((admin, index) => {
        const row = adminTable.insertRow();
        row.innerHTML = `
            <td>${admin.name}</td>
            <td>${admin.email}</td>
            <td>${admin.role}</td>
            <td>
                <button class="edit-btn" onclick="editAdmin(${index})">Edit</button>
                <button class="delete-btn" onclick="deleteAdmin(${index})">Delete</button>
            </td>
        `;
    });
}

// Edit User
function editUser(index) {
    const user = users[index];
    alert(`Editing User: ${user.name}`);
}

// Delete User
function deleteUser(index) {
    if (confirm('Are you sure you want to delete this user?')) {
        users.splice(index, 1);
        displayUsers();
    }
}

// Edit Admin
function editAdmin(index) {
    const admin = admins[index];
    alert(`Editing Admin: ${admin.name}`);
}

// Delete Admin
function deleteAdmin(index) {
    if (confirm('Are you sure you want to delete this admin?')) {
        admins.splice(index, 1);
        displayAdmins();
    }
}

// Search Users by Name, Email, or Status
searchUsers.addEventListener('input', function(event) {
    const query = event.target.value.toLowerCase();
    const filteredUsers = users.filter(user => {
        return user.name.toLowerCase().includes(query) ||
               user.email.toLowerCase().includes(query) ||
               user.status.toLowerCase().includes(query);
    });

    displayFilteredUsers(filteredUsers);
});

// Display filtered users
function displayFilteredUsers(filteredUsers) {
    userTable.innerHTML = '';
    filteredUsers.forEach((user, index) => {
        const row = userTable.insertRow();
        row.innerHTML = `
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.contact}</td>
            <td>${user.bookings}</td>
            <td>${user.status}</td>
            <td>
                <button class="edit-btn" onclick="editUser(${index})">Edit</button>
                <button class="delete-btn" onclick="deleteUser(${index})">Delete</button>
            </td>
        `;
    });
}

// Initial Display
displayUsers();
displayAdmins();
