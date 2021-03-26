# README

Create a User table with Guest, Vanilla, Editor and Admin Users
- Should probably have a roles column
  Can use Devise for authentication

Create an Articles table:
  Table will contain:
    title, content, category, user_id

Role Names:
  User, Editor and Admin

  Guest (No Login)
  * Vanilla Users (Logged in - No special role)
  * Editor Users
  * Admin Users *(Extra Credit)*

USER FUNCTIONALITY:
  GUEST/NO LOGIN:
    * Can see homepage with first 3 articles from each category.
    * Can see article index page.
    * Are sent to login/signup page if they want to see article show page.
      * Signup form can be included on the login page or just linked to from the login page.
    * Can signup
    * Can Login

  VANILLA USER/REG USER:
    * Can see everything a guest can
    * Can see article show pages.
    * Can logout

  EDITORS:
    * Can do everything a vanilla User can.
    * Can create articles
    * Can delete articles that they created
    * Can edit articles that they created
    * Can NOT delete or edit articles created by others

  ADMINS:
  * Can create users and set roles.
  * Can edit users and change roles.
  * Can't edit/destroy/create articles.

FOR AUTHORIZATIONS:
  Use one of these gems: Petergate *(Preferred)*, Pundit, Cancancan, Rolify.

* ...
