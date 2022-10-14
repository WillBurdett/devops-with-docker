Pushing to Heroku happens in a similar way to pushing to Docker Hub.

You can deploy an existing project this time. The course material should work, so let's pull that first from devopsdockeruh/coursepage

Go to https://www.heroku.com/ and create a new app there and install Heroku CLI. 
Tag the pulled image as registry.heroku.com/_app_/_process-type_ 
Process-type can be web for this exercise. 
The app should be your project name in Heroku.

Then push the image to Heroku with docker push registry.heroku.com/_app_/web and release it using the Heroku CLI: heroku container:release web --app _app_ (you might need to login first: heroku container:login)

You could also use the Heroku CLI to build and push, but since we didn't want to build anything this time it was easier to just tag the image.

Solution URL:
https://coursepage-example.herokuapp.com/