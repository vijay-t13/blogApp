# NOTES

## to create rails app 
```
rails new <appName>
```

## MVC pattern of a rails 
- Modal -> Database -> validation , query, Modification of data.
- View -> HTML and ERB files / JSON / XML files -> output of application
- Controller -> Handles the request and decides how things are build.

## Files and Folders 
1. .ruby-version :  decides the ruby version
2. config.ru : file for rack, rack -> web framework for ruby. lightweight http processor. 
3. Gemfile: Gems and dependeincies 
4. Rakefile : Define the commands which does the task eg. db migrate , rails new ... 
5. app/assets : Images and stylesheet.
6. app/channel: ActionCabel Websockets. 
7. app/controller : Decides what to do when request comes in.
8. app/helpers : some side function 
9. app/javascript : javascript content goes here. 
10. app/jobs:  background jobs eg. upload 
11. app/mailers: sending emails 
12. app/models: for database communication and schema of database.
13. view: HTML and other templates goes here.
14. bin : it has excutable files 
15. config/application.rb : we can difine the environments here. eg. dev, prod, test
16. config/cabel.yml : configurings websockets, 
17. config/master.key : environment variables and secret keys
18. config/database.yml : connection qith database.
19. config/environment.rb : checks the enviroment of application and goes to config/enviroment folder and excute as per requirement.
20. config/puma.rb: rails server configuration 
21. config/routes.rb: defined the route of applications.
22. config/storage.yml : define where we can upload the file 
23. db: this will have migration details
24. db/seeds.rb : file used to add some pre-populate some data
25. lib : some assets, or some rake rask we can create
26. public: error pages, logos, static files
27. storage: file upload and other upload detaisl
28. test: test cases and automated test case.
29. tmp : stores cache data and temporary data
30. vendor: eg. if need jQuery, we can put it here.

## Generators 
```
rails g model <ModelName> fieldName:datatype fieldname:datatype 
```

## Migration
To migrate table created on rails in to database `rails db:migrate`

## Rails console
`rails console` :  this will open the IRB console where we can update the database.
##### examples: 
Some commands to update and get data in IRB
```
To get all blog_posts
    - BlogPost.all  

create a blogpost with give data
    - BlogPost.create(title: "Hello" , body: "the body") 

delete blogPost with id 1 
    - BlogPost.delete(1)  

find blogPost with id 2 
    - BlogPost.find(2)  

To update the blogPost : 
    - blgpst = BlogPost.find(2)
    - blgpst.update(title: "this is updated ")
    - blgpst.save

To delete it from database 
    - blgpst.destroy
```

#### Timestamp : Part3 - completed - GORails