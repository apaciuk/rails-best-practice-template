# best-practices

Rails Bootstrap 5 template ith a ton of preconfigured gems for rapid prototyping of full stack Rails sites. Blog, pages, Devise Auth, Admin, Gravatar, Announcements, Notifications and a lot more.

Template repo.

Things you may want to cover:

* Ruby version

Ruby 3.0.0

Rails 6

* to do

Fix admin new user.

Add blog/posts categories and functions

Add Faraday http external http requests

* Configuration

clone repo

$ yarn
$ bundle install

$ rails db:migrate (sqlite)

$ rails g administrate:install
$ foreman start

Ruby console

User.first.update(admin:true)   (after first user registered)

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
