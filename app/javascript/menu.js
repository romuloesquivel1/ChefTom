class Menu {
  constructor(menuList) {
    this.menuList = menuList;
    this.mealsData = [];
  }

  addCategoryToSelect() {
    const select = document.querySelector('#select-category');
    let categories = this.mealsData.map((meal) => meal.category.name);
    categories = [...new Set(categories)];

    categories.forEach((category) => {
      const option = document.createElement('option');
      option.value = category;
      option.innerText = category;
      select.appendChild(option);
    });
  }

  bindSelectCategoryChangedEvent() {
    const select = document.querySelector('#select-category');
    select.addEventListener('change', (event) => {
      const category = event.target.value;
      const filteredMeals = category ? this.mealsData.filter(
        (meal) => meal.category.name === category
      ) : this.mealsData;
      this.renderMeals(filteredMeals);
    });
  }

  sortByName() {
    const sortedMeals = this.mealsData.sort((a, b) => {
      const nameA = a.name.toUpperCase();
      const nameB = b.name.toUpperCase();
      if (nameA < nameB) {
        return -1;
      }
      if (nameA > nameB) {
        return 1
      }
      return 0;
    });
    this.renderMeals(sortedMeals);
  }

  sortByPrice() {
    const sortedMeals = this.mealsData.sort((a, b) => a.price - b.price);
    this.renderMeals(sortedMeals);
  }

  bindSelectSortChangedEvent() {
    const select = document.querySelector('#select-sort');
    select.addEventListener('change', (event) => {
      const sort = event.target.value;
      if (sort === 'price') {
        this.sortByPrice();
      } else if (sort === 'name') {
        this.sortByName();
      }
    });
  }

  init() {
    if (!this.menuList) {
      return;
    }

    this.bindSelectSortChangedEvent();

    fetch('/api/meals')
      .then((response) => response.json())
      .then((data) => {
        this.mealsData = data;
        this.renderMeals(data);

        this.addCategoryToSelect();

        this.bindSelectCategoryChangedEvent();
      });
  }

  renderMeals(items) {
    this.menuList.innerHTML = '';
    items.forEach((meal) => {
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
