# Blog App

A simple app that let's a user post blogs, and comment to those blogs.
The app will send an email to the owner of the blog when it gets any comments.

# Features

Create, show, update and delete Blog Posts
Allow users to put a comment/feedback to blogs

# Setup

1. Clone the repository:

Using Git BASH or cmd of your choice, go to your preferred folder then run
git clone https://github.com/chimetoeat/simple-blog-ror.git

2. cd to the application:
run cd simple-blog-ror

3. Install the required gems:
run bundle install

4. Create and migrate the database:
run rails db:create and then
run rails db:migrate

# Usage

1. Go to the project directory and run 'rails s' in terminal
2. Open your chosen browser and navigate to 'http://localhost:3000' to access the app.
3. Sign up for a new user
4. When logged in, create a blog
5. You can Sign out and create another account using Sign Up and then put a comment on the blog.
6. To put a comment, go to Blogs and then choose a Blog then click "Show this Blog"
7. You can reply to that certain comment and it will send an email to the owner of the blog.
