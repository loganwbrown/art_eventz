# encoding: utf-8

class EventPhotoUploader < CarrierWave::Uploader::Base
include CarrierWave::MiniMagick

  # version :large do
  #   process resize_to_fit: [500, 500]
  # end

  version :medium, from_version: :large do
    process resize_to_fit: [200, 200]
  end



  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 

  def extension_white_list
    %w(jpg jpeg gif png)
  end


end
