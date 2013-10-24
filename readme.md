# Estim is an estimation machine
[Visit the prototype](http://estim.herokuapp.com)

## Origin  

Last year we had defined a list of standard items that are asked in most of the rails projects and did some poker planning on it, to speed up the redaction of estimates (see 'spec library' in Drive for the original document). 
For those who wonder what poker plannig is [visit here](http://en.wikipedia.org/wiki/Planning_poker)

## Technology 

Estim is written in ruby and uses Sinatra. 
It supports: 
* [Haml](http://haml-lang.com/)
* [Sass](http://sass-lang.com/)
* [Compass](https://github.com/chriseppstein/compass)
* [jQuery](http://jquery.com/)  

A number of helpful rake tasks are already included.

## Structure 

[Sinatra Bootstrap](https://github.com/adamstac/sinatra-bootstrap) project on Github as an initial template. 

The list of items to estimate is defined in app.rb. There are only two views: index.haml, with the form to fill, and estim.haml with the results. The template used is the same as in Drive (template quote) for estim.haml.

## Getting started

Clone the project

    bundle install

Start the app by running:

    rake s

This rake command runs `bundle exec shotgun config.ru` behind the scenes for you and starts the app on Sinatra's default port 9393 and will now be able to view the application in your web browser at this URL [http://localhost:9393](http://localhost:9393).

You'll also want to open a new terminal window to the same directory and run `compass watch` to watch the Sass files for changes.

## Helper Rake Tasks

There are a few helper Rake tasks that will help you to clear and compile your Sass stylesheets as well as a few other helpful tasks. There is also a generate task, so you can generate a new project at a defined location based on the bootstrap.

    rake -T

    rake css:clear         # Clear the CSS
    rake css:compile       # Compile CSS
    rake css:compile:prod  # Compile CSS for production
    rake generate          # Generate a new project at dir=foo
    rake s                 # Run the app

## Future developments 

Adding an angularJS layer to edit the estimated days  

Using Google Drive API to create there the corresponding estimation  
