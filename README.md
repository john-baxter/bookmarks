# bookmarks (project)

## Week four - web app with database

### Monday 9 Mar 2020 with James

#### User story

```
As a user
So that I can access my favourite websites
I would like to see a list of bokmarks
```

Start by setting up project. Used guidance from Makers "The Ruby Web Project Setup List", and James.

End of step 2 - we have now created a test page and a homepage, both with appropriate text and passing tests.

End of step 3 - a bit of a wild refactor. (got there by following the Walkthrough). Need to read more about MVC model. Try to figure out what is going on with the `self.all` method. 

### Tuesday 10 Mar 2020 with Liam 
### Happy Mario day

#### User story

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

#### Actual README
The real readme for a real project should contain instructions for how another person might set the project up on their own computer. In this case we have to include all the gems, ruby version etc. but also the instructions to setup the SQL DB.\
Create a file: `project/db/migrations/01_create_bookmarks_table.sql` which contains the command used in `psql` to set up the database in the first instance.\
Then add the following to the README (this is copied from the walkthrough this time.)
- Connect to psql using `psql postgress`
- Create the database using the psql command CREATE DATABASE "bookmark_manager";
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query we have saved in the file 01_create_bookmarks_table.sql

### Wednesday 11 Mar 2020 with Peter

