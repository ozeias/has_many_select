module ActiveRecord
  module Associations
    class AssociationProxy #:nodoc:
      protected
        def set_belongs_to_association_for(record)
          if @reflection.options[:as]
            record["#{@reflection.options[:as]}_id"]   = @owner.id unless @owner.new_record?
            record["#{@reflection.options[:as]}_type"] = @owner.class.base_class.name.to_s
          elsif @reflection.options[:primary_key]
            record[@reflection.primary_key_name] = @owner.send(@reflection.options[:primary_key]) unless @owner.new_record?
          else
            record[@reflection.primary_key_name] = @owner.id unless @owner.new_record?
          end
        end
    end
  end
end
