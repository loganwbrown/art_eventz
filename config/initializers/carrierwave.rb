CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
    :provider               => 'AWS',                      
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY_ID"],                        
    :aws_secret_access_key  => ENV["AWS_SECRET_ACCESS_KEY_ID"],       
    :region                 => 'us-east-1'                  
  }
  config.fog_directory  = 'arteventz'                    
  config.fog_public     = true                                   
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  
end
