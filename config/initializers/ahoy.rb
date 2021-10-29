class Ahoy::Store < Ahoy::DatabaseStore
# set to true for JavaScript tracking
Ahoy.api = false
# better user agent parsing
Ahoy.user_agent_parser = :device_detector
# def user
#     controller.current_visit
# end
end

