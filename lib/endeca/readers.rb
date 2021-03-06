module Endeca
  class ReaderError < ::StandardError; end

  module Readers
    module ClassMethods
      def add_reader(name, &block)
        meta = (class << self; self; end)
        meta.instance_eval do
          define_method(name) { |*attrs| reader(*attrs, &block) }
        end
      end

      # Maps key/value pairs from the data structure used to initialize a
      # Endeca object. Allows attribute renaming. Use a block to perform data
      # injunction on the value as it is set.
      #
      # ==== Examples
      #
      #   # Specify basic attributes
      #   reader :title
      #
      #   # Attribute renaming
      #   reader :long_desc => :description
      #
      #   # Data injunction
      #   reader(:title => :upcased_title) { |title| title.upcase }
      def reader(*attrs,&block)
        hash = {}
        block ||= lambda {|x| x}

        hash.update(attrs.pop) if Hash === attrs.last

        attrs.each{ |attr| hash[attr] = attr }

        hash.each do |variable, method|
          reader_names << method if respond_to?(:reader_names)
          define_method(method) do
            begin
              block.call(attributes[variable.to_s])
            rescue StandardError => e
              raise Endeca::ReaderError, e.message
            end
          end
        end
      end

      # Typecasts attributes as integers.
      #
      # ==== Examples
      #   integer_reader :id, :rating
      def integer_reader(*attrs)
        reader(*attrs) { |value| value.blank? ? 0 : Integer(value) }
      end

      # Typecasts attributes as BigDecimal
      #
      # ==== Examples
      #   decimal_reader :price
      def decimal_reader(*attrs)
        require 'bigdecimal' unless defined?(BigDecimal)
        reader(*attrs) { |value| BigDecimal(value.to_s) }
      end

      # Typecasts attributes as floats 
      #
      # ==== Examples
      #   float_reader :latitude, :longitude
      def float_reader(*attrs)
        reader(*attrs) do |value| 
          if value 
            if value.respond_to?(:to_f)
              value.to_f
            else 
              Float(value) 
            end
          end
        end
      end

      # Typecasts attributes as a Perly boolean ("0" == false, "1" == true")
      #
      # ==== Examples
      #   boolean_reader :price
      def boolean_reader(*attrs)
        reader(*attrs) { |value| value == "1" ? true : false }
      end

    end

    module InstanceMethods      
      def method_missing(method_id)
        raise NoMethodError, "undefined method '#{method_id}' for #{self.inspect}. Do you need to add a reader for it?"
      end
    end
    
    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end
  end
end
