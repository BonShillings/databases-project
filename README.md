# databases-project

INSTRUCTIONS

1. Set up the database
In pgAdmin create a new postgresql user (role)
created with username: ratingswebsite password: pass

IN pgAdmin create a new Postgresql database named ratingswebsite by running the   rails_compatible_table.sql and rails_compatible_insert.sql files in the sql editor

2. Install ruby on rails  

you can install directly from the website 

http://rubyonrails.org/download/

OR

alternatively use the command line tools by following an instruction guide such as 

http://railsapps.github.io/installrubyonrails-mac.html
http://railsftw.bryanbibat.net


3. install drivers

you will need to run 
$ gem install pg in the terminal / command line

4. run the local server 

After your rbenv has been setup navigate to the ratingswebsite folder using the command line 

once this folder is your current directory run the command 
$ rails s 
to start the server

If you navigate to localhost:3000 in your browser, the Restaurant Rater website should be accessed
