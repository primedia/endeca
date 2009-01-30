module Endeca
  class Dimension
    include Comparable
    extend ClassToProc
    extend Readers

    reader \
      "DimValueName"  => :name,
      "SelectionLink" => :to_params

    integer_reader \
      "DimValueID"      => :id,
      "NumberofRecords" => :record_count

    attr_reader :raw
    def initialize(raw={})
      @raw=raw
    end
    alias_method :attributes, :raw

    def inspect
      "#<#{self.class}=0x#{self.object_id.to_s(16)} id=#{id} name=#{name.inspect}>"
    end

    def ==(other)
      id == other.id
    end

    def <=>(other)
      name <=> other.name
    end
  end
end
