# Glyph

Glyph is a small extension that will convert a special character to it's CSS hex value for use in :before and :after pseudo content.

![Glyph Demo](http://f.cl.ly/items/090F3B1a190E2C3f0G1A/glyph.gif)

## Installation

### Compass
    # Install gem
    gem install sassy-glyph

    # Require in your config.rb file
    require 'sassy-glyph'

    # Import into your project
    @import "sassy-glyph";

## Usage

Use the glyph mixin in the content property and it will compile to the correct CSS hex value

    # Use glyph mixin
    .arrow:after {
        content: glyph(➜)
    }

    # CSS compiles to
    .arrow:after {
        content: "\279C";
    }


