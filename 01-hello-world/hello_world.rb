# hello_world.rb
class HelloWorld
    def self.hello(name = nil)
      if name
        "Hello, #{name}!"
      else
        "Hello, World!"
      end
    end
  end
  