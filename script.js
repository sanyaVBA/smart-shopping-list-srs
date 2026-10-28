function addItem() {
    const itemInput = document.getElementById('itemInput');
    const itemText = itemInput.value.trim();

    // Валидация
    if (itemText === "") {
        alert('Введите название товара!');
        return;
    }

    const shoppingList = document.getElementById('shoppingList');
    const li = document.createElement('li');
    li.innerHTML = `
        <span>${itemText}</span>
        <button onclick="this.parentElement.remove()">Удалить</button>
    `;
    shoppingList.appendChild(li);

    // Очищаем поле и возвращаем фокус
    itemInput.value = "";
    itemInput.focus();
}
