module Spree
  module BaseHelper
    def sorted_themes(themes)
    	binding.pry
        # themes.sort { |a, b| Spree::Theme::STATES.index(b.state) <=> Spree::Theme::STATES.index(a.state)}
    end
  end
end
