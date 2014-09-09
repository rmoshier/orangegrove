class OrangeGrove
  attr_accessor :trees
  def initialize(trees)
    trees = 10
    @trees =[]
  end

  def add_tree(height)
    @trees << OrangeTree.new
  end
end

class OrangeTree
  attr_accessor :height, :age, :orangeCount

  def initialize
    @height = 0
    @orangeCount = 0
    @age = 0
    @alive = true
  end

  def height
    if @alive
      @height
    end
  end

  def count_the_oranges
     @orangeCount
  end

  def one_year_passes
    if @alive
      @height += 5
      @age += 1
      @orangeCount += 10
    end
  end

  def pickAnOrange
    if @orangeCount > 0
        @orangeCount -= 1
        puts "You now have #{@orangeCount} oranges."
    end
  end

  def tree_status
    puts "Year #{@age} Orange Tree stats:"
    puts "The tree is this tall: #{@height}"
    puts "The tree is this age: #{@age}"
    puts "Current orange count: #{@orangeCount}"
  end

  def death
    if @age >= 4
      puts "The tree is dead."
    end
  end
end

my_orangegrove = OrangeGrove.new("Grover")
my_orangegrove.add_tree(:height)
puts my_orangegrove.trees
my_orangetree = OrangeTree.new
6.times do
  my_orangetree.one_year_passes
  my_orangetree.tree_status
  my_orangetree.pickAnOrange
  puts "--------------------"
end

# my_orangetree.height
# my_orangetree.age
# my_orangetree.orangeCount
my_orangetree.death
# my_orangetree.tree_status

# things to address:
# x tree death
# * cycling through/showing difference between tree before and after
# orange is picked (is this a real question? I don't know!)
# x delicious orange placement
