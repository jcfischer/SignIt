class Trait

  attr_accessor :raw_data

  def initialize strokes
    @raw_data = {}
    # get the first timestamp
    zero_time = nil

    strokes.each_with_index do |stroke, idx|
      @raw_data[idx] = []
      tuples = stroke.data.split("|")
      zero_time = tuples.first.split(",").first.to_i unless zero_time

      tuples.each do |tuple|
        time_stamp, x, y = tuple.split(",")
        time_stamp = time_stamp.to_i
        @raw_data[idx] << [time_stamp - zero_time, x.to_i, y.to_i]
      end

    end
  end

  def strokes &block
    @raw_data.each do |idx, stroke|
      yield idx, stroke
    end

  end
  # returns the trait, overwritten in subclasses
  def trait
    @raw_data.size
  end
end
