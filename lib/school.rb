class School
  
  attr_accessor :name, :roster 
  
  
  def initialize(name)
    @name = name
    @roster = {}                          #creates and empty hash 
  end
  
  def add_student(student, grade)           #looked at the "resources" and gave it a shot!!??!
    @roster[grade] ||= []                   #hash["new_key"] = [] "value array"
    @roster[grade] << student               #hash["new_key"] << "new_value_for_value_array"
  end
  
  def grade(grade)
    roster.detect do |key, value|         #iterates thru roster hash and evaluates key and value
      if key == grade                     #if the key is a "grade" it'll return the value
        return value 
      end
    end
  end

  def sort 
    new_hash = {}                       #new hash allows for key and value to be iterated over
    roster.each do |key, value|
      new_hash[key] = value.sort        #
    end
    new_hash
    end 
  
end\\\\\\\\\\\\\\\\\