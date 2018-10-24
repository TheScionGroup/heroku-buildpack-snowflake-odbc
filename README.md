heroku-buildpack-snowflake-odbc
===

## Usage
This requires [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) to run before
it, with the following in the Aptfile:


```
unix-odbc
unixodbc-dev <-- required for ruby-odbc gem
https://raw.githubusercontent.com/drivy/heroku-buildpack-snowflake-odbc/master/snowflake-odbc-2.16.10.x86_64.deb
```

Add buildpacks

```
heroku buildpacks:add --index 1 heroku-community/apt
heroku buildpacks:add https://github.com/drivy/heroku-buildpack-snowflake-odbc
```
