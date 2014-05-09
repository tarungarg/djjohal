Rails Application for an online media website

We are going to create a RAILS application that lists songs for user to listen to. The home page of the websites list the singer names, and when the user click on the singer name, he will be redirected to a page that lists the singer songs.

Our job is to create a control panel for this website that allows its admin to add a new singer, and then add songs for the singer.

Here is the whole requirements:

- Our Rails application must run on rails 2.3.5. You will have to add the following line to environment.rb file:
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

- Employ AJAX (any package) to add singer name

- The admin must be able to add songs for each singer listed and upload a media file for each song. 

- Use paperclip for media upload.

- The singer name and songs could be in arabic language or english language. Get app ready for something like that

- Add migrations for your mysql tables

- Singer name can not contain digits and Song name must be more than 5 chars

- Songs and Singers can be deleted from the website control panel

- The home page list the singers who are available

- Singer page lists the singer songs and link to the media file

- Song files are mp3 or rm files

- Html and css is not properly used..

---------------------------------------------------------------------------------------------------

All steps to setup rails 2.3.5 and other details

Setup for Rails 2.3.5

1. rvm use 1.8.7

2. gem update --system

3. gem update --system 1.5.3

4. rails install -v=2.3.5

5. Followed the blog "http://andre.arko.net/2010/02/13/using-bundler-09-with-rails-235/" for further steps.

6. change rake/rdoctask to rdoc/task in rakefile

7. gem 'rdoc' and bundle install 

8. gem 'paperclip', '~> 2.3.1.1'

9. If u want to translate the songs and singers list, there are two icons on the top of the list and it will open your page in google translater. but google translator will not pick your localhost so we will use "pagekite" for this to make a server to our localhost.

10. Audio streaming is also possible

11. Run "rake db:seed" to make an admin user. 
email: admin@admin.com and password : password