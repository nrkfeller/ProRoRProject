Workflow

39 : Like / Dislike Feature
  likes table + associated model
  
40 Likes Logic : can only like once per recipe (model)
  sort by number of likes (model + countroler)
  @courses = Course.all.sort_by { |likes| likes.thumbs_up_total }.reverse

42 Pagination: controls database querying
  will-paginate gem (gemfile, likemodel, coursemodel, coursecontroller, indexhtml)
  
43-44 authentication
  has_secure_password (using bcrypt and salt)
  usermodel, gemfile, routes,
  
45 authenticate (contd)
  usercontroller newhtml, edthtml, _form
  
46 edit users
  edit + update logic in usercontroller
  
47 show user
  user profile pic, and courses created, pagination
  showhtml, usercontroller
  
48 adding paths
  paths in the html pages
  
50 login and logout

52 log in restrictions
  redirecting and restrictions and paths
  appcontroller, usercontroller, _navigation, pagescontroller, homehtml
  
54 require same user method + set_user
  usercontroller
  
55 require same user for courses, restriction on making a new course
  coursecontroller
  all safety features done, all paths for smooth navigation through the appcontroller

56 list chefs
  using tabs for users and courses. for better navigation
  
57-59 setting up AWS & dploying on heroku
  picture uploader, carrierwave.rb, gemfile, and AWS.amazon.com
  
60 many to many in db layer
  4 new migrations, domain and prereq models, course_domain and course_prereqs, course model
  
63 creating new Domains and Prereqs
  setting up controller and views and routes
  
64 forms for Domains and Prereqs

66-67 navigation bar dropdow menu
  nav partial and customscss - access to new restricted to logged in users - overwrite before action for likes
  
68-69 updated styles and CSS display chockboxes
  indexhtml, shohtml, _form, customscss
  
70 administrator permissions
  Create an admin that can change edit everything and delete items
  - add migration admin - coursecontroller(current_user action) - courses.show.html
  
