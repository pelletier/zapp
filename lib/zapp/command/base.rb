module Zapp
  module Command

    class Base
      attr_accessor :args, :options

      def execute(args=[], options={})
        self.args, self.options = args, options

        if args_ok?
          call
        else
          output_args_error
        end
      end
    end

  end
end
