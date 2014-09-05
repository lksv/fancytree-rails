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

or if you want to use another style include it directly:
```
*= require fancytree/skin-awesome/ui.fancytree
```
Note that for awesome style (extension) to work you to:

1. Add ```font-awesome-rails``` gem (and include its style in application.css)
2. Enable ```awesome``` extension in Fancytree.
3. Include extension code (```//= require fancytree/jquery.fancytree.awesome```) to ```app/assets/javascripts/application.js```.

## Credits

Piece of code of Rakefile copied from joliss/jquery-ui-rails. See
3th-party for its license.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`). You
   can use rake fancytree:update for semiautomatic update of mar10/fancytree
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
