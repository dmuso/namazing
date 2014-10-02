require 'active_support/inflector'

module Namazing

  class Wordup

    attr_accessor :boring, :awesomes

    def initialize boring
      @boring = boring
      @awesomes = []
      raise ArgumentError, "Wordup requires a string" if @boring.class.name != "String"
    end

    def split
      if type == :underscore
        return @boring.split("_")
      else
        return @boring.split /(?=[A-Z])/
      end
    end

    def awesome
      result = @awesomes.join("_")
      if type == :camelcase
        return result.camelize(:lower)
      elsif type == :pascalcase
        return result.camelize
      end
      result
    end

    def word_count
      @boring.underscore.split("_").length
    end

    def type
      return :underscore if @boring =~ /_/
      if @boring =~ /[A-Z]+/
        if @boring[0] =~ /[A-Z]/
          return :pascalcase
        else
          return :camelcase
        end
      else
        return :underscore
      end
    end

  end

end