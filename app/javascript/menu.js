class Menu {
  constructor(menuList) {
    this.menuList = menuList;
    this.mealsData = [];
  }

  init() {
    if (!this.menuList) {
      return;
    }

    fetch('/api/meals')
      .then((response) => response.json())
      .then((data) => {
        this.mealsData = data;
        this.renderMeals();
      });
  }

  renderMeals() {
    this.menuList.innerHTML = '';
    this.mealsData.forEach((meal) => {
      const listItem = document.createElement('li');
      listItem.classList.add('meal-item'); // Add the class 'meal-item' to each list item

      listItem.innerHTML = `
            <h2 class='meal-name'>${meal.name}</h2>
            <p>${meal.description}</p>
            <p>${meal.category.name}</p>
            <p>£${meal.price}</p>
          `;
      this.menuList.appendChild(listItem);
    });
  }
}

window.Menu = Menu;
