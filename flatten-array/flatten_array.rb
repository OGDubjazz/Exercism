class FlattenArray
  VERSION = 1
  
  def self.flatten(item, destination = [])
    return if item.nil?
    item.is_a?(Array) ? item.each{ |i| flatten(i, destination) } : destination.push(item)
    destination
  end
end