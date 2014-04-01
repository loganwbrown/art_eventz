class ArtPhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :medium, from_version: :large do
    process resize_to_fit: [200, 200]
  end

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end