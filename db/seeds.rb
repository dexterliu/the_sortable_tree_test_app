# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

def build_test_tree klass = Page, count = 5
  count.times do
    var = klass.new
    var.title = rand.to_s
    var.save
    puts '.'
    count.times do
      var1 = klass.new
      var1.title = rand.to_s
      var1.save
      var1.move_to_child_of var
      puts '..'

      count.times do
        var2 = klass.new
        var2.title = rand.to_s
        var2.save
        var2.move_to_child_of var1
        puts '...'
      end
    end
  end
  puts klass.to_s
  puts klass.count 
end

build_test_tree Page, 3


