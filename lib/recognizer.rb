require File.join(File.dirname(__FILE__ ), "traits", "trait.rb")
 
class Recognizer

  attr_accessor :strokes, :traits
  def initialize signature
    @strokes = signature.strokes

    @traits = []
    path = File.join(File.dirname(__FILE__ ), "traits", "*.rb")
    puts path
    Dir.glob(path).each do |f|
      unless f =~ /trait\.rb/
        require f 
        # store the class of the trait in the array
        @traits << f.split("/").last.split(".").first.camelize.constantize 
      end
    end

  end

  # runs the signature through all traits
  def evaluate
    results = {}
    traits.each do |trait|
      results[trait] = trait.new(@strokes ).trait.to_a.sort
    end
    results
  end


end
