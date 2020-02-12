# BlankGem

A blank/empty Ruby gem that does nothing. Useful for testing that only specific
Bundler groups are loaded when using a dummy group.

## Installation

Add this line to your application's Gemfile, ideally under a group you'll never
want:

```ruby
gem 'blank_gem', group: :never
```

And then execute:

    $ bundle install

## Usage

Simply set Bundler's `without` option to exclude the group you've put the
`blank_gem` within. For example:

    $ bundle config set without 'never'

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jimeh/blank_gem.
