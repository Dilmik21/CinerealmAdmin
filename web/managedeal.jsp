<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deals & Exclusives Management</title>
    <link rel="stylesheet" href="css/managedeal.css">
</head>
<body>
        
    <div class="main-content">
        <section id="deals">
            <h1>Deals & Exclusives Management</h1>
            
            <!-- Add New Deal Form -->
            <div class="form-section">
                <h2>Add New Deal</h2>
                <form id="addDealForm">
                    <label for="dealName">Deal Name:</label>
                    <input type="text" id="dealName" name="dealName" placeholder="Enter deal name" required>

                    <label for="description">Description:</label>
                    <textarea id="description" name="description" placeholder="Enter deal description" required></textarea>

                    <label for="applicable">Applicable Movies or Showtimes:</label>
                    <input type="text" id="applicable" name="applicable" placeholder="Enter applicable movies or showtimes" required>

                    <label for="discountType">Discount Type:</label>
                    <select id="discountType" name="discountType" required>
                        <option value="percentage">Percentage</option>
                        <option value="flat">Flat Rate</option>
                    </select>

                    <label for="validity">Validity Period:</label>
                    <input type="date" id="startDate" name="startDate" required>
                    <input type="date" id="endDate" name="endDate" required>

                    <label for="promoCode">Promo Code:</label>
                    <input type="text" id="promoCode" name="promoCode" placeholder="Enter promo code (if any)">

                    <label for="banner">Banner Image Upload:</label>
                    <input type="file" id="banner" name="banner" accept="image/*">

                    <button type="submit" class="btn">Add Deal</button>
                </form>
            </div>

            <!-- Deals List -->
            <div class="deals-list">
                <h2>View/Edit/Delete Deals</h2>
                <input type="text" id="searchDeals" placeholder="Search Deals...">
                <ul id="dealsList">
                    <!-- Deals will be added dynamically -->
                </ul>
            </div>

            <!-- Analytics Section -->
            <div class="analytics-section">
                <h2>Analytics</h2>
                <p>Total Deals Used: <span id="totalDealsUsed">0</span></p>
                <p>Revenue Impact of Deals: <span id="revenueImpact">$0.00</span></p>
            </div>
        </section>
    </div>

    <script src="javascript/managedeal.js"></script>
</body>
</html>
