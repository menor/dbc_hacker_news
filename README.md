# Hacker News Clone Part 2

## Learning Competencies

* Use the MVC pattern in web applications with proper allocation of code and
  responsibilities to each layer
* Implement CRUD in an MVC application
* Implement user login and authentication in a web application
* use AJAX actions to change views based on async

## Releases

Now we're going to add voting to our Hacker News clone.

### Release 0: Bring on the Votes

What's Hacker News without voting?  Users should be able to up and down vote
posts and comments.

## Objectives

Users should be able to vote up both comments and posts.  For now, you can have
two separate tables for each type of vote.

### Models &amp; Controllers

At the very least you should have the following models:

1. `Post`
2. `User`
3. `Comment`
3. `PostVote`
4. `CommentVote`

Don't try to do something fancy and have `PostVote` and `CommentVote` inherit
from a shared base class.  Just have two separate tables and classes for now.

### Views

Implement all the views and use AJAX to implement the voting.

## Optimize Your Learning

## Resources
