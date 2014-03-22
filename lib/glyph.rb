require "sass"

if (defined? Compass)
  Compass::Frameworks.register(
    "glyph",
    :path => "#{File.dirname(__FILE__)}/.."
  )
end

module Glyph
  VERSION = "0.5.0"
end


module Sass::Script::Functions
  def to_glyph(string)
    assert_type string, :String
    
    converted_string = string.value.unpack("U*").first.to_s(16).upcase;
    
    if converted_string.length <= 2 
    	converted_string = converted_string.insert(0, "\\00")
    else 
    	converted_string = converted_string.insert(0, "\\")
    end

    Sass::Script::Value::String.new(converted_string)
  end
  declare :to_glyph, [:string]
end