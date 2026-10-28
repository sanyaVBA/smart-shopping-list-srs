function addItem() {
    const itemInput = document.getElementById('itemInput');
    const itemText = itemInput.value.trim();

    if (itemText === "") {
        alert('Введите название товара!');
        return;
    }

    const shoppingList = document.getElementById('shoppingList');
    const li = document.createElement('li');
    
    // Чекбокс для отметки и кнопка удаления с подтверждением
    li.innerHTML = `
        <div>
            <input type="checkbox" onchange="this.nextElementSibling.style.textDecoration = this.checked ? 'line-through' : 'none'">
            <span>${itemText}</span>
        </div>
        <button onclick="if(confirm('Удалить этот товар?')) this.parentElement.remove()">Удалить</button>
    `;
    shoppingList.appendChild(li);

    itemInput.value = "";
    itemInput.focus();
}
