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
  
50 logina nd logout