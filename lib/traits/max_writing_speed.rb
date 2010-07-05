
class MaxWritingSpeed < Trait


  def trait
    traits = {} 
    self.strokes do |idx, data|
      last_tuple = nil
      vs = []
      data.each do |tuple|
        if last_tuple
          t_0, x_0, y_0 = last_tuple
          t_1, x_1, y_1 = tuple
          distance = Math.sqrt((x_1 - x_0) ** 2 + (y_1 - y_0) ** 2)
          delta_t = t_1 - t_0
          v = distance / delta_t
          vs << v
        end
        last_tuple = tuple
      end
      traits[idx] = vs.max
    end
    traits
  end
end
