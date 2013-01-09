module Zapp
  module Command

    class New < Base
      SYNTAX = %q{new [my_app_name]}
      DESCRIPTION = %q{Creates a new Zendesk app.}

      private
      def call
      end

      def args_ok?
        !args.empty?
      end

      def output_args_error
        say "Please provide an app_name."
      end
    end

  end
end
