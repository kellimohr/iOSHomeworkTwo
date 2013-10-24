iOSHomeworkTwo
==============
Assignment

Using the MVC design pattern, create a data model, view and viewController for Posts for a social networking app.
Create a Post model which inherits from NSObject and has a userName, title & content NSString property and a timeStamp NSDate property
Create a PostTableViewCell which inherits from UITableViewCell.  Give it a Post property and make sure it knows how to display the properties of it's post model object in the tableViewCell.
Create a PostsTableViewController which inherits from UITableViewController and has an NSArray of Post objects.  
Instantiate 10 or more Post objects, then use the UITableView dataSource protocol methods to display them as PostsTableViewCell views in your PostsTableViewController
Challenge

Create another view controller (inherit from UIViewController) with a form (group of UITextFields) for creating a new Post
Write your own delegate protocol for passing data from your CreatePostViewController back to your PostsTableViewController.
Add edit/delete functionality to your PostsTableViewController
Extra Credit

Persist the data between app launches using NSKeyedArchiver/NSKeyedUnarchiver, Core Data or create your own backend server if you have a background in something like Ruby on Rails, node.js or another web server framework.
