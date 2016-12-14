# Idea.ly: A Question, Idea, and Random Thoughts Platform with Answers and Comments Functionality

Project 2 for General Assembly's Full-Time Web Development Course

For this project, the requirements were:
* to be built in Rails.
* have at least 2 models.
* have complete RESTful routes for at least one of your resources with GET, POST, PUT, and DELETE.
* have error handling & validations for all resources.
* utilize an ORM to create a database table structure (e.g. ActiveRecord) and interact with your relationally-stored data.
* have semantically-clean HTML and CSS that passes the standard validators.

***

## Ruby Version and Key Gems
Idea.ly is built with Rails 5.0.0 and uses Postgresql as the database for Active Record.

### Gems includes:
  Used for upvoting and downvoting:
    [act_as_votable](https://rubygems.org/gems/acts_as_votable/versions/0.10.0)


  Used for User Authentication:
    [devise](https://rubygems.org/gems/devise/versions/4.2.0)

## Background Story
If you're anything like me, you have random thoughts, questions and ideas constantly burning in your head. I often wonder, what would others think about this?

Idea.ly gives users the ability to post their ideas and receive feedback from other users.

Users can also upvote or downvote any and all posts - but only once!

## Technologies Used
Idea.ly is a Full Stack, Ruby on Rails CRUD Application. Using a Postgresql database and Active Record ORM, Idea.ly has three models which stores all users, posts and comments associated with that user.


## How to Run App
Install Gems from Gemfile:
```
$ bundle install
```

Start The Server:
```
$ rails s
```

## Screenshots of Idea.ly
Homepage:
![alt text](app/assets/images/ideal.ly-homepage.png "Idea.ly Homepage screenshot")
Upvote and Downvote Screenshot:
![alt text](app/assets/images/upvote-downvote.png "Idea.ly screenshot")
