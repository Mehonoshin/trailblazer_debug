module BA
  module Test
    class Action < Trailblazer::Operation
      success :run_method!

      private

      def run_method!(options, **)
        puts "Method is invoked123!"
      end
    end
  end
end
