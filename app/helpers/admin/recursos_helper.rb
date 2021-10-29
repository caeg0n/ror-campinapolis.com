module Admin::RecursosHelper
  def get_images_from_assets
    a = []
    l = []
    r = []
    l = Rails.application.assets.each_file.to_a
    l.each do |i|
      if i.include?("/assets/images/")
        a << i
      end
    end
    a.each do |b|
      c = b.split('/')
      d = c[b.split('/').count-1]
      r << ActionController::Base.helpers.asset_path(d)
    end
    return r
  end
end
