class EventPhotoUploader < CarrierWave::Uploader::Base
include CarrierWave::MiniMagick
 
    # process resize_to_fit: [500, 500]


  # version :medium, from_version: :large do
  process resize_to_limit: [500, 700]
  # end


  # version :small, from_version: :medium do
  #   process resize_to_fit: [50, 50]
  # end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  def extension_white_list
    %w(jpg jpeg gif png)
  end


end
