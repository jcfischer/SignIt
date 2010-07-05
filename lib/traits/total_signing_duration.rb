class TotalSigningDuration < Trait


  def trait

    traits = {} 
    self.strokes do |idx, data|
      first_tuple = data.first
      last_tuple = data.last
      delta_t = last_tuple.first - first_tuple.first
      traits[idx] = delta_t
    end
    traits
  end
end
