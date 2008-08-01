module ActiveRecord
  module Associations
    module ClassMethods
      private
        def create_has_many_reflection(association_id, options, &extension)
          options.assert_valid_keys(
            :class_name, :table_name, :foreign_key, :primary_key,
            :dependent,
            :select, :conditions, :include, :order, :group, :limit, :offset,
            :as, :through, :source, :source_type,
            :uniq,
            :finder_sql, :counter_sql,
            :before_add, :after_add, :before_remove, :after_remove,
            :extend, :readonly
          )
          options[:extend] = create_extension_modules(association_id, extension, options[:extend])

          create_reflection(:has_many, association_id, options, self)
        end

        class JoinDependency # :nodoc:
          class JoinBase # :nodoc:
            attr_reader :active_record, :table_joins
            delegate :table_name, :column_names, :primary_key, :reflections, :sanitize_sql, :to => :active_record
          end
        end
    end
  end
end
