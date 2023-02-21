## ARTICLE - WITHOUT AR

This repository will be used as the guide for an assignment, working with a Magazine domain.

### Description

We have three models: Author, Article, and Magazine.

An Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Author - Magazine is a many to many relationship.

### Tools Used

This project was built with the following tools:

Ruby ~ v3.1.+

### Topics Covered

The following are the concepts covered in this assignment:

* Classes and Instances
* Class and Instance Methods
* Variable Scope
* Object Relationships
* Arrays and Array Methods


Documentation on the Ruby language can be found here: [Ruby Docs](https://docs.ruby-lang.org/en/3.1/)

### Pre-requisites

In order to use this repo you need to have the following installed:

OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
Ruby - 3.1.+

### Installation

To use this repo on your machine requires some simple steps

### Alternative One
Open a terminal / command line interface on your computer

Clone the repo by using the following:

   https://github.com/m-njora/articles-code-challenge

Be patient as it creates a copy on your local machine for you.

Change directory to the repo folder:

  cd Article-code-challenge.git
(Optional) Open it in Visual Studio Code

  code .
(Alternate Option) Open it in any editor of your choice.

### Alternative Two
On the top right corner of this page there is a button labelled Fork.

Click on that button to fork the repo to your own account.

Take on the process in Alternative One above.

Remember to replace your username when cloning.

  git clone https://github.com/your-username-here/Article-code-challenge.git

### Running the application

Running the application is very straight forward. You can use the following steps to run the app.

Install required dependencies using bundle

 bundle install 

Run the application on the terminal

 ruby bin/run 

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

* For Aticle:
    * Article#author - Returns the author for that given article.
    * Article#magazine - Returns the magazine for that given article

### Initializers, Readers, and Writers

#### Author

- `Author#initialize(name)`
  - An author is initialized with a name, as a string.
  - A name **cannot** be changed after it is initialized.
- `Author#name`
  - Returns the name of the author

#### Magazine

- `Magazine#initialize(name, category)`
  - A magazine is initialized with a name as a string and a category as a string
  - The name and category of the magazine **can be** changed after being initialized.
- `Magazine#name`
  - Returns the name of this magazine
- `Magazine#category`
  - Returns the category of this magazine
- `Magazine.all`
  - Returns an array of all Magazine instances

#### Article

- `Article#initialize(author, magazine, title)`
  - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
  - An article **cannot** change its author, magazine, or title after it is has been initialized.
- `Article#title`
  - Returns the title for that given article
- `Article.all`
  - Returns an array of all Article instances

### Object Relationship Methods

#### Article

- `Article#author`
  - Returns the author for that given article
- `Article#magazine`
  - Returns the magazine for that given article

#### Author

- `Author#articles`
  - Returns an array of Article instances the author has written
- `Author#magazines`
  - Returns a **unique** array of Magazine instances for which the author has contributed to

#### Magazine

- `Magazine#contributors`
  - Returns an array of Author instances who have written for this magazine

### Associations and Aggregate Methods

#### Author

- `Author#add_article(magazine, title)`
  - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
- `Author#topic_areas`
  - Returns a **unique** array of strings with the categories of the magazines the author has contributed to

#### Magazine

- `Magazine.find_by_name(name)`
  - Given a string of magazine's name, this method returns the first magazine object that matches
- `Magazine#article_titles`
  - Returns an array strings of the titles of all articles written for that magazine
- `Magazine#contributing_authors`
  - Returns an array of authors who have written more than 2 articles for the magazine
  
### Authors
This project was contributed to by:

Mutheki Njora

### License
The project is licensed under Apache 2