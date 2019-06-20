class PhotoUploader < CarrierWave::Uploader::Base
  # Cloudinary é a nuvem para onde faremos os uploads das imagens
  include Cloudinary::CarrierWave
  process :convert => 'png'

  # No código abaixo estaremos criando uma versão profile da imagem
  # com o tamanho que queremos, que neste caso é 100 x 100
  version :profile do
    process :resize_to_fill => [100, 100, :north]
  end
end
