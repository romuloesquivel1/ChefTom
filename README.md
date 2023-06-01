# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<h1>Menu</h1>

<div id="sort-dropdown">
  <label for="sort-select">Sort by:</label>
  <select id="sort-select">
    <option value="all">All</option>
    <option value="starter">Starter</option>
    <option value="main-course">Main Course</option>
    <option value="chef-special">Chef Special</option>
    <option value="dessert">Dessert</option>
    <option value="vegetarian">Vegetarian</option>
  </select>
</div>

<ul id="menu-list">
  <!-- Meals will be dynamically populated here -->
</ul>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const menuList = document.getElementById('menu-list');
    const sortSelect = document.getElementById('sort-select');
    let mealsData = [];

    function renderMeals(meals) {
      menuList.innerHTML = '';
      meals.forEach(meal => {
        const listItem = document.createElement('li');
        listItem.innerHTML = `
          <h2>${meal.name}</h2>
          <p>${meal.description}</p>
          <p>${meal.category}</p>
          <p>£${meal.price}</p>
        `;
        menuList.appendChild(listItem);
      });
    }

    function filterMealsByCategory(selectedCategory) {
      let filteredMeals = [];

      if (selectedCategory === 'all') {
        filteredMeals = [...mealsData].sort((a, b) => a.price - b.price);
      } else if (selectedCategory === 'starter') {
        filteredMeals = mealsData.filter(meal => meal.category === 'Starter');
      } else if (selectedCategory === 'main-course') {
        filteredMeals = mealsData.filter(meal => meal.category === 'Main Course');
      } else if (selectedCategory === 'chef-special') {
        filteredMeals = mealsData.filter(meal => meal.category === 'Chef Special');
      } else if (selectedCategory === 'dessert') {
        filteredMeals = mealsData.filter(meal => meal.category === 'Dessert');
      } else if (selectedCategory === 'vegetarian') {
        filteredMeals = mealsData.filter(meal => meal.category === 'Vegetarian');
      }

      renderMeals(filteredMeals);
    }

    function sortMealsByPrice() {
      const sortedMeals = [...mealsData].sort((a, b) => a.price - b.price);
      renderMeals(sortedMeals);
    }

    function sortMealsByName() {
      const sortedMeals = [...mealsData].sort((a, b) => a.name.localeCompare(b.name));
      renderMeals(sortedMeals);
    }

    function fetchMealsData() {
      // Check if meals data exists in sessionStorage
      const storedMealsData = sessionStorage.getItem('mealsData');
      if (storedMealsData) {
        mealsData = JSON.parse(storedMealsData);
        renderMeals(mealsData);
      } else {
        fetch('/api/meals')
          .then(response => response.json())
          .then(data => {
            mealsData = data;
            renderMeals(mealsData);
            // Store meals data in sessionStorage
            sessionStorage.setItem('mealsData', JSON.stringify(mealsData));
          });
      }
    }

     fetchMealsData();

    sortSelect.addEventListener('change', function() {
      const selectedValue = sortSelect.value;
      if (selectedValue === 'all' || selectedValue === 'starter' || selectedValue === 'main-course' || selectedValue === 'chef-special' || selectedValue === 'dessert' || selectedValue === 'vegetarian') {
        filterMealsByCategory(selectedValue);
      } else if (selectedValue === 'price') {
        sortMealsByPrice();
      } else if (selectedValue === 'name') {
        sortMealsByName();
      }
    });

    // Clear stored meals data when leaving the page
    window.addEventListener('beforeunload', function() {
      sessionStorage.removeItem('mealsData');
    });
  });
</script>
