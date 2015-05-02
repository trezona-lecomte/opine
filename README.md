== README

First, follow the instructions on https://rubygems.org/pages/download
to install RubyGems if it's not already installed. You can check whether
it's installed with:
```
gem -v
=> 2.4.5
```


Install bundler. This is for dependency management.
```
gem install bundler

bundler -v
=> Bundler version 1.7.13
```

Clone the git repo into the desired directory:

```
git clone https://github.com/trezona-lecomte/opine.git
```

Now you've got the repo, cd into it & run bundle install:
```
cd opine
bundle install
```
This will install all of the gems in the Gemfile & all of their
dependencies. This includes rails. 

It may complain that you don't have postgres installed, if so:
```
```

