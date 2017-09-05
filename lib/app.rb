module Training
  class App

    def reverse_parentheses phrase

      stack = phrase.chars
      stack_aux = []
      stack_rest =[]

      loop do

        char = stack.shift

        if char.eql? ')'

          if stack.empty?
            stack_rest =[]
          else
            stack_rest = stack
            stack = []
          end

          loop do
            char_intern = stack_aux.pop()
            break if char_intern.eql? '('
            stack.push( char_intern )
          end

          stack = stack_aux + stack + stack_rest
          stack_aux = []

        else

          stack_aux.push( char )

        end

        break if stack.empty?

      end

      stack_aux.join

    end

  end
end

obj = Training::App.new

puts obj.reverse_parentheses "(cale (cale2))"
