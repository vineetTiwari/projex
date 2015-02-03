# RAILS BLOG WITH MANY TO MANY WITH DREW THE TA

lets create a blog with users, posts, comments and likes

##getting started

```shell
#create a new rails app with a postgresql database
#use the -t option to skip tests
rails new userbloglikes -d postgresql -t

# cd into project directory
# generate a post resource
 cd userbloglikes 
 rails generate resource post title:string body:text

#add a root path to the aforementioned controller - posts with index as action for the homepage

```



