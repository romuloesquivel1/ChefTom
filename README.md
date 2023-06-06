# README

**CHEF TOM - Full-Stake Ruby on Rails Application**

I have created a Ruby on Rails Full-Stack application, for a fictional website where a user can register an account and make a booking. 

**The requirements for this project were as follows:**
Build a full stack web application. Must be your own work.
Select a Project Idea of your own.
Have at least 2 models (more if it makes sense)
Auth is a requirement
Have full CRUD on at least one of your models
Be able to Add/Delete on any remaining models
Have high quality code:
Follow accepted naming conventions
Consistent indentation
Well-structured and readable code
Semantic naming of variables, functions, CSS classes, etc.
Short and clear functions that do one thing
Efficient code - if you have your MVP, refactor
DRY (Don't Repeat Yourself) code
Use one of these technology stacks. You may choose which tech stack.
Full-Stack Rails App
Rails API with React Front-End
Express API with React Front-End
Be deployed on Heroku or similar platform
Craft a README.md file that explains your app

**The MVP for this application are as follows:**
Users can create an account
Users can edit their account 
Users can delete their account 
Users can create a booking
Users can edit their booking 
Users can delete their booking
Users must be able to fill out all requirements for their booking to be successfull
USers must be able to navigate successfully through the application

**Wireframe**


**USER and BOOKING MODELS**

In the User and Booking models, the relationships between the models are defined using ActiveRecord associations. 

User Model:
`has_many :bookings`: establishes a one-to-many relationship between the User model and the Booking model, which allows a user to retrieve all the bookings associated with a registered user easily.

`dependent: :destroy`: ensures that when a user is deleted, all their associated bookings are also deleted. 

Booking Model:
`belongs_to :user`: establishes a one-to-one relationship between the Booking model and the User model, which allows a user to access the user associated with a booking easily.

The validations (validates :date, :time, :number_of_people, :special_requests, presence: true: ) ensure that the necessary fields (date, time, number_of_people, and special_requests) are present when creating or updating a booking. 

This enforces data consistency by preventing incomplete or invalid bookings from being saved.

By defining the associations and validations, I created a relationship between users and their bookings so I can retrieve all bookings associated with a user and retrieve the user associated with a booking. 

**USER AUTHENTICATION** 

devise/register/new.html.erb:
•	Presents the registration form for new users.
•	Users can enter their name, email, password, and password confirmation.
•	Devise also includes form validations to ensure data integrity. Data has to meet certain criteria (e.g. password match and length), and error messages are generated when a validation error occurs. 

devise/sessions/new.html.erb:
•	Displays the login form for existing users.
•	Users enter their email and password to authenticate.

devise/profiles/show.html.erb:
•	Showcases the user's profile page with their name and email.
•	I include buttons to edit the profile, sign out, delete, and manage a users bookings in order to achieve full CRUD.


**BOOKING SYSTEM**

App.views/bookings/new.html.erb
•	The form uses the `form_with` helper method to create a form that is tied to the @booking model. 
•	I have also given the form fields the required: true attribute, ensuring that users must provide values for these fields. This is also present in the booking model, which has validations for the presence of necessary fields

App.views/bookings/edit.html.erb
•	Users can edit existing bookings, as the form pre-populates the current values of the booking being edited. 
•	Users can then update all of their previous requests, with the form also displaying any validation errors if they occur.

Then, show.html.erb will show the bookings of a particular user in the system, and index.html.erb will show all the bookings of every user. 


**CONTROLLERS**

The main controllers (e.g. booking, user, profile, and sessions controller) handle various CRUD operations for bookings, user profiles, and user sessions. They interact with the corresponding models and views to perform the necessary actions and provide the appropriate responses to the user.

For example, if we look at the Profiles Controller:
•	The show action retrieves the current user's profile and assigns it to @user.
•	The edit action finds the current user and assigns it to @user.
•	The update action updates the attributes of the current user based on the provided parameters in `user_params`. If the update is successful, it redirects to the profile page. Otherwise, it renders the edit profile form again.
•	The destroy action destroys the current user's account, signs out the user, and redirects to the root page.

**WINS**

Achieving user authentication and full CRUD for both models was a difficult but reqarding process, along with displaying the information on different pages. Managing to complete the application in full-stack Ruby was also great, considering the small window that it had been taught to me. 

**DIFFICULTIES**

Whilst I am also classing them as wins, getting user authentication to work was a long and painful experience, and required duel programming to incorporate the fundamentals into the application. 

**WHAT'S NEX?**

I have orfginally added an API in JavaScript that feautred meals on the menu, which would ultimately be fetched by a user and sorted by various categories (e.g. starter, price, etc).

I also wanted to add a feature whereby a user could either like or dislike a meal, and then the meal couuld be featured on their profile page. I began to program all of this, include the inclusion of lie and dislike buttons, however was unable to complete this within the time frame, and as such will work on this after the course has ended. 