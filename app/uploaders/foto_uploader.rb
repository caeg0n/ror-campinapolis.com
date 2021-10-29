 class FotoUploader
# class FotoUploader < CarrierWave::Uploader::Base
#   require 'stcampinapolis'
#   #include CarrierWave::MiniMagick
#   include Cloudinary::CarrierWave
#   process :convert => 'png'
#   #storage :file
#   version :standard do
#     process :resize_to_fill => [100, 150, :north]
#   end

#   def public_id
#     if not current_admin_usuario.id.nil?
#       cloudinary_prefix = Rails.application.config.cloudinary_prefix
#       cliente = Admin::Cliente.find(STCampinapolis.instance.get_cliente[0])
#       cliente = Admin::Cliente.find(current_admin_usuario)
#       public_id = cloudinary_prefix + '/' + cliente.nome
#       cloudinary_public_id = generate_clodinary_public_id(Date.today.to_s+Time.zone.now.to_s)
#       return public_id+'/'+cloudinary_public_id.to_s
#     end
#   end

#   def generate_clodinary_public_id(seed)
#     val = 0
#     seed.each_byte do |c|
#       val = val + c
#     end
#     ret = rand(36**(val/100)).to_s(36)
#     ret
#   end
#   #version :thumb do
#   #  process :resize_to_fill => [50, 50]
#   #end
#   #def extension_white_list
#   #  %w(jpg jpeg gif png)
#   #end
#   #def store_dir
#   #  "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#   #end
 end
