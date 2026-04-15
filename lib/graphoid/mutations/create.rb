# frozen_string_literal: true

module Graphoid
  module Mutations
    module Create
      def self.build(model)
        Graphoid.initialize
        grapho = Graphoid.build(model)
        type = ::Types::MutationType

        name = "create_#{grapho.name}"
        plural_name = name.pluralize

        type.field(name: name, type: grapho.type, null: true) do
          argument(:data, grapho.input, required: false)
        end

        type.class_eval do
          define_method :"#{name}" do |data: {}|
            begin
              user = context[:current_user]
              data = model.before_resolve_create(self, data) if model.respond_to?(:before_resolve_create)
              Graphoid::Mutations::Processor.execute(model, grapho, data, user)
            rescue Exception => ex
              Utils.log_error(name, ex)
              treated_message = Utils.treat_known_error_messages(ex.message, grapho.name)
              GraphQL::ExecutionError.new(treated_message)
            end
          end
        end
      end
    end
  end
end
