
class SharkTank
  attr_reader :sharks

  def initialize
    @sharks=[]
  end

  def add_shark(shark)
    @sharks<<shark
  end

  def add_entrepreneur
    @entrepreneur=
  end

  def sharks_out?
    @sharks.all? do |sharks|
      puts sharks.check_pitch
    end
  end

  def sharks_remaining
    @sharks.reject do |shark|
      shark.check_pitch
    end
  end.size

end

class Shark
  attr_reader :name, :is_out

  def initialize(name)
    @name=name
  end

  def check_pitch
    @is_out=[true,false].sample
  end
end

class Entrepreneur
  attr_reader :name

  def initialize(name)
    @name=name
  end

  def pitch
  end
end

def test
  game=SharkTank.new

  mr_wonderful=Shark.new "Mr.Wonderful"
  puts mr_wonderful.name=="Mr.Wonderful"

  game.add_shark mr_wonderful
  puts game.sharks == [mr_wonderful]

  mark_cuban=Shark.new "Mark Cuban"
  puts mark_cuban.name=="Mark Cuban"

  game.add_shark mark_cuban
  puts game.sharks == [mr_wonderful, mark_cuban]
  p game.sharks

  entrep=Entrepreneur.new "Wyncode"
  puts entrep.name == "Wyncode"
  puts game.entrepreneur==entrep

  entrep.pitch

  all_out = game.sharks_out?
  puts "Done" if all_out
  puts "Sharks remaining: #{game.sharks_remaining}"

  if game.sharks_remaining == 1
    #shark/entrep negotiate
  end
end

test
