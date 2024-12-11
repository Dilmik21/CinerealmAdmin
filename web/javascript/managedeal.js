// Add new deal form submission
document.getElementById('addDealForm').addEventListener('submit', function (e) {
    e.preventDefault();

    // Get form data
    const dealName = document.getElementById('dealName').value;
    const description = document.getElementById('description').value;
    const applicable = document.getElementById('applicable').value;
    const discountType = document.getElementById('discountType').value;
    const startDate = document.getElementById('startDate').value;
    const endDate = document.getElementById('endDate').value;

    // Add the new deal to the list
    const dealsList = document.getElementById('dealsList');
    const listItem = document.createElement('li');
    listItem.innerHTML = `
        <div>
            <strong>${dealName}</strong> (${discountType})
            <p>${description}</p>
            <p>Validity: ${startDate} to ${endDate}</p>
        </div>
        <div>
            <button onclick="editDeal(this)">Edit</button>
            <button onclick="deleteDeal(this)">Delete</button>
            <button onclick="toggleActivation(this)">Activate</button>
        </div>
    `;
    dealsList.appendChild(listItem);

    // Clear the form
    document.getElementById('addDealForm').reset();
});

// Edit a deal
function editDeal(button) {
    alert("Edit functionality coming soon!");
}

// Delete a deal
function deleteDeal(button) {
    button.parentElement.parentElement.remove();
}

// Toggle activation
function toggleActivation(button) {
    button.textContent = button.textContent === 'Activate' ? 'Deactivate' : 'Activate';
}

