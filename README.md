# Fancytree::Rails

fancytree-rails is a simple gem to add [FancyTree](https://github.com/mar10/fancytree) vendor files to the
Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'fancytree-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancytree-rails

## Usage

In your Gemfile, add:


```ruby
gem 'fancytree-rails'
```

Note that also [jquery-ui-rails](https://github.com/joliss/jquery-ui-rails) needs to be available.

Require javascript to ```app/assets/javascripts/application.js```:

```
//= require fancytree
```

In case you want to use *gridnav* add also ```//=require fancytree/jquery.fancytree.gridnav.js```

Extend stylesheet assets ```app/assets/stylesheets/application.css```
by:

```
*= require ui.fancytree
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
