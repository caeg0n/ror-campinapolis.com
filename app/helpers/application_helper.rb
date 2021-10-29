module ApplicationHelper
  def flash_message(level)
    case level
        when "notice" then "alert alert-success"
        when "success" then "alert alert-success"
        when "error" then "alert alert-error"
        when "alert" then "alert alert-danger"
    end
  end
 
  def validate(var)
    if defined?(var)
      if not var.nil?
        if var.is_a?(String)
          if not var.empty?
            return true
          end
        else
          if var.is_a?(Date)
            return true
          else
            if var.is_a?(TrueClass) || var.is_a?(FalseClass)
              return true
            else
              if var.is_a?(Fixnum)
                return true
              end
            end
          end
        end
      end
    end
    return false
  end
 
end
