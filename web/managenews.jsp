<%@ include file="navigation.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Management</title>
    <link rel="stylesheet" href="css/managenews.css">
</head>
<body>
    <div class="main-content">
        <h1>News Management</h1>

        <!-- Add News Form -->
        <div class="form-section">
            <h2>Add New News</h2>
            <form id="newsForm">
                <label for="title">Title</label>
                <input type="text" id="title" name="title" required>

                <label for="content">Content</label>
                <textarea id="content" name="content" rows="5" required></textarea>

                <label for="publishDate">Publish Date</label>
                <input type="date" id="publishDate" name="publishDate" required>

                <label for="expiryDate">Expiry Date (Optional)</label>
                <input type="date" id="expiryDate" name="expiryDate">

                <button type="submit" class="btn">Add News</button>
            </form>
        </div>

        <!-- News List -->
        <div class="news-list">
            <h2>Manage News</h2>
            <input type="text" id="searchNews" placeholder="Search News">

            <ul id="newsItems">
                <!-- Dynamically Generated News List -->
            </ul>
        </div>
    </div>
    <script src="javascript/managenews.js"></script>
</body>
</html>
