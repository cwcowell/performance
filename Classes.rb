class Object1
  attr_accessor :int_num, :float_num
  @instance_int = 0
  @instance_float = 0.0
  @@class_int = 0
  
  def self.class_int
    return @@class_int
  end
  
  def self.class_int=(num)
    @@class_int = num
  end
end

NUM_INSTANCES = 50_000_000

object_array = Array.new

start_time = Time.now
puts "start: #{start_time}"

NUM_INSTANCES.times do |i|
  my_object = Object1.new
  my_object.int_num = i
  my_object.float_num = i.to_f
  Object1.class_int = i
  object_array << my_object
end

end_time = Time.now
elapsed_time = end_time - start_time
puts object_array.size
puts "elapsed: #{elapsed_time} seconds"
