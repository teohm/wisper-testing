module Wisper
  class Testing
    class FakeBroadcaster
      def initialize(events)
        @events = events
      end

      def broadcast(listener, publisher, event, args)
        # no-op
        @events << event.to_sym
      end
    end
  end
end
