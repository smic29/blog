# README

This is a Ruby on Rails lesson from Avion School.

Resources:
- [Active Record](https://guides.rubyonrails.org/active_record_migrations.html)
<!-- - []() -->

Start postgres db first:
`$ pg_ctl start`

To run on local:
`$ bundle exec rails s`


02/05/2024
- Adding a new table: `$ rails g model article` where article == name of class. | can be found under db folder;
- Migrating: `$ rails db:migrate`
- Checking migration status: `$ rails db:migrate:status` || migration ID is a timestamp.
- To apply a new column while migration status is already up: `$ rails g migration add_author_name_to_articles author_name:string` 
    - remember to migrate, status will be down on migration status if it's a pending migration.
- If you need to rollback recent migrations: `$ rails db:rollback`
- rails console: `$ rails c`
    - If using console, new initialization must be saved using `irb > variable_name.save` to check if there: `irb > variable_name.id`
    - If not saved, it's only save in memory.
- If database was updated manually (Storage): Do display changes we need to run: `irb > field_name.reload`
    - This was demonstrated only. Useful information (?)

Concepts for models
- model `class Article` => articles table
- Article object => article record
- Article object property => article record column

02/06/2024
- In rails console: the `.create` method will create a new object for that class and save it at the same time.
- CRUD [Direct Link to Guide Article](https://guides.rubyonrails.org/active_record_basics.html)
    - Create => new + save/save! || create/create!
    - Read => finder methods (find, find_by, find_by!, etc) || where where.not
    - Update => find + save || update
    - Destroy => delete(avoid this)
- ActiveRecord_Relation object quacks like an Array, so we treat it as an array/enumerable