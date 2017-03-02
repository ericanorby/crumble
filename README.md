##Technologies Used

Ruby on Rails, Devise (gem), HTML, CSS, Javascript/jQuery

##Approach Taken

I started by creating an ERD and mapping out the model associations for User, Recipe and Ingredient. After creating my models and migrations, I coded the new/update/edit/delete controller actions and views one by one, ensuring that each new functionality added was working. After getting Crumble up and running with those three models, I decided to add a new model, Favorite, to be a join table between User and Recipe. I made modifications to the styling of my application concurrently with adding the core functionality. Lastly, I added flash messages to notify the user when events were successful/unsuccessful, added required fields to my forms, and created a welcome page.

##Unsolved Problems

- I need to figure out how to get the input field for directions to be a bullet or numbered list, so the directions are not clumped together into one large paragraph.
