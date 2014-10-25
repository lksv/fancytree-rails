# Fancytree::Rails

`fancytree-rails` is a simple gem to add [FancyTree](https://github.com/mar10/fancytree) JavaScript library files to the
Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fancytree-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fancytree-rails

## Usage

Note that [jquery-ui-rails](https://github.com/joliss/jquery-ui-rails) also needs to be available.

Require all javascript (core and all extensions) by adding the following to `app/assets/javascripts/application.js`:

```js
//= require fancytree
```

Or you can add core and required extensions only, for example:
```js
//= require fancytree/jquery.fancytree-core
//= require fancytree/src/jquery.fancytree.glyph
//= require fancytree/src/jquery.fancytree.gridnav
```

Extend stylesheet assets (defaults to the `lion` skin) by adding the following to `app/assets/stylesheets/application.css`:

```css
*= require ui.fancytree
```

If you want to use another skin, include it's stylesheet instead:
```css
*= require fancytree/skin-vista/ui.fancytree
```

Note that for `awesome` or `bootatrap` skin to work you need to use `font-awesome-rails` or [one](https://github.com/twbs/bootstrap-sass) [of](https://github.com/seyhunak/twitter-bootstrap-rails) the `bootstrap` gems accordingly.

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
