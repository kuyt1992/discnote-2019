module Fog
  module Cloudstack
    class Compute

      class Real
        # Updates traffic type of a physical network
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/updateTrafficType.html]
        def update_traffic_type(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateTrafficType') 
          else
            options.merge!('command' => 'updateTrafficType', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

