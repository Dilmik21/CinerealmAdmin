<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
    <link rel="stylesheet" href="css/settings.css">
</head>
<body>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Settings</h1>

        <!-- Admin Account Settings -->
        <section id="admin-account" class="settings-section">
            <h2>Admin Account Settings</h2>
            <div class="form-group">
                <label for="password">Change Password</label>
                <input type="password" id="password" placeholder="Enter new password">
            </div>
            <div class="form-group">
                <label for="profile">Update Profile</label>
                <input type="file" id="profile" accept="image/*">
            </div>
            <button class="btn" onclick="updateAccountSettings()">Save Changes</button>
        </section>

        <!-- System Settings -->
        <section id="system-settings" class="settings-section">
            <h2>System Settings</h2>
            <div class="form-group">
                <label for="currency">Currency</label>
                <input type="text" id="currency" placeholder="Enter currency symbol">
            </div>
            <div class="form-group">
                <label for="timezone">Time Zone</label>
                <input type="text" id="timezone" placeholder="Enter time zone">
            </div>
            <div class="form-group">
                <label for="default-booking-rules">Default Booking Rules</label>
                <textarea id="default-booking-rules" placeholder="Enter default booking rules"></textarea>
            </div>
            <button class="btn" onclick="updateSystemSettings()">Save Changes</button>
        </section>

        <!-- Payment Settings -->
        <section id="payment-settings" class="settings-section">
            <h2>Payment Settings</h2>
            <div class="form-group">
                <label for="gateway">Payment Gateway Integration</label>
                <input type="text" id="gateway" placeholder="Enter Payment Gateway Name">
            </div>
            <button class="btn" onclick="updatePaymentSettings()">Save Changes</button>
        </section>

        <!-- Notifications -->
        <section id="notifications" class="settings-section">
            <h2>Notifications</h2>
            <div class="form-group">
                <label for="email-template">Email Template</label>
                <textarea id="email-template" placeholder="Enter email template"></textarea>
            </div>
            <div class="form-group">
                <label for="sms-template">SMS Template</label>
                <textarea id="sms-template" placeholder="Enter SMS template"></textarea>
            </div>
            <button class="btn" onclick="updateNotifications()">Save Changes</button>
        </section>
    </div>

    <script src="javascript/settings.js"></script>
</body>
</html>
