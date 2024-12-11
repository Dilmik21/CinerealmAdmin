document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("newsForm");
    const newsList = document.getElementById("newsItems");
    const searchInput = document.getElementById("searchNews");

    const newsItems = [];

    // Add new news
    form.addEventListener("submit", (e) => {
        e.preventDefault();

        const title = document.getElementById("title").value;
        const content = document.getElementById("content").value;
        const publishDate = document.getElementById("publishDate").value;
        const expiryDate = document.getElementById("expiryDate").value;

        const news = { title, content, publishDate, expiryDate };
        newsItems.push(news);

        updateNewsList();
        form.reset();
    });

    // Update news list
    const updateNewsList = () => {
        newsList.innerHTML = "";
        newsItems.forEach((news, index) => {
            const li = document.createElement("li");
            li.innerHTML = `
                <div>
                    <p><strong>Title:</strong> ${news.title}</p>
                    <p><strong>Content:</strong> ${news.content}</p>
                    <p><strong>Publish Date:</strong> ${news.publishDate}</p>
                    <p><strong>Expiry Date:</strong> ${news.expiryDate || "N/A"}</p>
                </div>
                <button onclick="deleteNews(${index})">Delete</button>
            `;
            newsList.appendChild(li);
        });
    };

    // Delete news
    window.deleteNews = (index) => {
        newsItems.splice(index, 1);
        updateNewsList();
    };

    // Search news
    searchInput.addEventListener("input", (e) => {
        const searchTerm = e.target.value.toLowerCase();
        Array.from(newsList.children).forEach((li) => {
            const text = li.textContent.toLowerCase();
            li.style.display = text.includes(searchTerm) ? "" : "none";
        });
    });
});


