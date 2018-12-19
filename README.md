# README

MyBooksAPI is a web application to track what books you are reading and what page you are currently on. This is the repository for the back end app, but the front end can be found at [MyBooks](https://github.com/MPalhidai/mybooks). Future features can also be found on the front end app repo.

* [MyBooks](https://www.michaelpalhidai.com/mybooks/)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This project runs on [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Rails](http://installrails.com/)

Current environment:
```
rvm -v 1.29.14
ruby -v 2.5.1p57
rails -v 5.2.1
bundler -v 1.16.1
```

### Installing

In your terminal change directory to where you want to clone this rails application.

CLI:
```
git clone https://github.com/MPalhidai/MyBooksAPI.git
cd MyBooksAPI
bundle install
rails db:setup
```
### Running local server:

CLI:
```
rails server
```
Open your browser at "localhost:3000".

### Running the tests

CLI:
```
rspec
```

## Built With

rails new project-name-here --api --database=postgresql

## Authors

* [Michael Palhidai](https://github.com/MPalhidai)
