class Monster
  attr_reader :name, :actions
  
  def initialize(name)
    @name = name
    @actions = {
      roar: 0,
      scares: 0
    }
  end  
  
  def say(&block)
    print "#{name} says..."
    yield
  end
  
  def roar(&block)
    actions[:roar] += 1
    print "#{name} shouts! "
    yield
  end
end

monster = Monster.new("Arnold")
monster.say { puts "Welcome rargh" }
monster.roar do 
  puts "Rarghhhhhh"
end