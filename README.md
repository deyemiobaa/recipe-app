![](https://img.shields.io/badge/Microverse-blueviolet)

# Ruby on Rails Group Capstone Project - Recipe App

Hello Foodies! Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking Recipe App allows you to make them public so anyone can access them. Built with Ruby on Rails | Ruby | Tailwind CSS | PostgreSQL

Enjoy!


## Built With

- Ruby
- Ruby on Rails
- Terminal
- IRB
- Rubocop (linters)
- Devise
- CanCanCan
- RSpec and Capybara Testing Library
- Bullet gem - to look out for N+1 queries
- PostgreSQL

## Milestones

- [x] Milestone 1: Set up a Kanban board of all project tasks
- [x] Milestone 2: Set up repository on GitHub using Gitflow.
- [x] Milestone 3: Read a [UML class diagram](https://github.com/microverseinc/curriculum-rails/blob/main/recipe-app/images/recipe_erd_2_members.png) and create all classes outlined in separate.rb files
- [x] Milestone 4: Follow the layout of [wireframes](https://github.com/microverseinc/curriculum-rails/blob/main/recipe-app/buisness_requirements.md) provided. 
- [x] Milestone 5: Personalize the rest of the design including colors, typographies, spacings, etc.
- [x] Milestone 6: Add login page and registration page: built with Devise.
- [x] Milestone 7: Create food list that displays a list of food added by the logged-in user as in the wireframe and displays the quantity of a given food. Leads to a form that allows users to add new food.
- [x] Milestone 8: Create recipes list that displays a list of recipes created by the logged-in user as in the wireframe. Leads to recipe details. If the user is the owner of the recipe, user can to delete recipe.
- [x] Milestone 9: Add public recipe list that displays a list of all public recipes ordered by newest as in the wireframe. Leads to recipe details.
- [x] Milestone 10: Add recipe details: If the recipe is public or the user is the owner of the recipe, displays the recipe details as in the wireframe. If the user is the owner of the recipe, links to the form that allows the user to add new food.
- [x] Milestone 11: Create General shopping list view  that shows the list of food that is missing for all recipes of the logged-in user, compares the list of food for all recipes with the general food list of that user. Counts the total food items and total price of the missing food.
- [x] Milestone 12:  Ensure no N+1 queries happening.
- [x] Milestone 13: Create Navigation menu that allows users to open all pages created.
- [x] Milestone 14: Set up Devise for authentication.
- [x] Milestone 15: Set up RSpec and Capybara testing libraries.
- [x] Milestone 16: debug rubocob linter errors


## Getting Started

To get a local copy up and running follow these simple example steps.


## Pre-requisites
Make sure you have Ruby and Rails installed on your computer. If not, you can follow this [tutorial](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project) to install them.

If you don't have PostgreSQL installed, you can follow this [tutorial](https://www.postgresql.org/download/) to install it.

If you don't have yarn installed, you can follow this [tutorial](https://classic.yarnpkg.com/en/docs/install/#debian-stable) to install it.
  
## Usage
In your terminal, navigate to your current directory and run this code

`git clone https://github.com/steveWDamesJr/recipe-app.git`

Then run

`cd recipe-app`

Open the project in your favorite code editor. `code .` for VS Code.

  - Use the command `bundle install` or just simply `bundle` to install all project dependencies.
  - Run `yarn install` to install all the JavaScript dependencies.
  - Run `yarn build:css` to build the CSS files.
  - Run `rails db:create db:migrate` to create the database and run migrations.
  - You might need to supply a username and password for your PostgreSQL database if you run into an error with the previous step.
  - Simply navigate to `config/database.yml` and add your username and password to the `username` and `password` fields.
  - Type in the terminal `rails s` to start the server then click on `http://127.0.0.1:3000`
  - Enjoy your Recipe App!
  
  Have fun storing new recipes, creating and viewing grocery list and of course from your recipes, creating delicious meals!

## Run Linters:

### To run rubocop we use:

`rubocop`

### To autocorrect offenses with rubocop we use:

`rubocop --auto-correct-all` or
`rubocop -A`

### Run linter for styling

`npx stylelint "**/*.{css,scss}"`

### To autocorrect offenses with stylelint we use

`npx stylelint "**/*.{css,scss}" --fix`


## Testing

   Within the projects working directory run test using the following command:
  `rspec` in the terminal


## Author1
👤 **Sodiq**

- GitHub: [@deyemiobaa](https://github.com/deyemiobaa)
- Twitter: [@deyemiobaa](https://twitter.com/deyemiobaa)
- LinkedIn: [Sodiq Aderibigbe](https://linkedin.com/in/sodiqa)


## Author2
👤 **STEVE W DAMES JR**

- GitHub: [@githubhandle](https://github.com/steveWDamesJr)
- Twitter: [@twitterhandle](https://twitter.com/Steve88312331)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/steve-w-dames-jr/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/steveWDamesJr/recipe-app/issues).


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc


## 📝 License

This project is [MIT](./MIT.md) licensed.
