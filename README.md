---
tags: activerecord, todo, introductory
languages: ruby
resources: 2
---

# ActiveRecord Costume Store

## Objectives

![jack o lantern emoji](http://www.emoji-cheat-sheet.com/graphics/emojis/jack_o_lantern.png) ![dog ghost emoji](http://www.emoji-cheat-sheet.com/graphics/emojis/ghost.png) ![jack o lantern emoji](http://www.emoji-cheat-sheet.com/graphics/emojis/jack_o_lantern.png)

For this morning's todo, you'll be creating a table, 'costume_stores', and a class, CostumeStore, with the help of ActiveRecord.

## Background

The table will have seven columns:
  1. name
  2. location
  3. number of costumes, or "costume inventory"
  4. number of employees
  5. whether or not it's still in business
  6. opening time
  7. closing time

Before coding out the creation of this table, take a look at just a few ActiveRecord data types below:

|Data Type                      |Examples                                |
|-------------------------------|----------------------------------------|
|boolean                        | true, false                            |
|integer                        | 2, 13, 485                             |
|string                         | "Halloween", "Boo!"                    |
|datetime                       | DateTime.now, DateTime.new(2014,10,31) |

## Instructions

#### File Structure

You will only be altering code in two files, `costume_store.rb` in the `app/models/` folder and `001_create_costume_stores.rb` in the `db/migrations/` folder.

```
├── app
│   └── models
│       └── costume_store.rb
└──db
    └── migrations
        └──001_create_costume_stores.rb
```

#### Getting Started

**This is a test-driven lab so start with the first test and work your way down.**

* The first step is to run `bundle install`.
* Create the CostumeStore class in `app/models/`.
* Fill out the ActiveRecord migration such that it passes the specs.
* Remember to run `rake db:migrate` every time you change or create a migration. 
* Just like on any other lab, run `rspec` to view your progress.

## Resources
* [ActiveRecord Migrations](http://guides.rubyonrails.org/migrations.html)
  * Just look at the code for the example migrations
* [Creating Active Record Models](http://guides.rubyonrails.org/active_record_basics.html#creating-active-record-models) 