# Engineering Growth Framework alias EGF

## Getting started
EGF is a Rails App running on Ruby 2.6.3 and Rails 6.0.0

To get started you will need to install Ruby in your system. The easy way to do this in OS X is via [Homebrew](http://brew.sh) and [Ruby Build](https://github.com/rbenv/ruby-build#readme).

Make sure to install ruby 2.6.3

Now that Ruby is installed, you need to install [Bundler](http://bundler.io)

```
> gem install bundler
```

### Installing Postgresql
EGF is using Postgresql database engine. The easy way to install Postgresql in OS X is using [PostgresqlApp](http://postgresapp.com)

### Setting up the Rails application

Execute inside the project directory the following commands, those commands will:
- Install Ruby dependencies
- Create development and test databases

First ask for the master key to decrypt the environment variables, once you have this master key, create a file inside of config folder and name the file like:

```
> master.key
```

paste the master key.

```
> bundle install
> bundle exec rake db:setup
```

### Run the tests

Our main goal is to have an 80% of test coverage

```
> rails test
```

### Deployment process
