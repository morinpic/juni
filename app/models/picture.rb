class Picture < ActiveRecord::Base
  belongs_to :product

  has_attached_file :image,
                    :styles => {
                      :l => '600x400>',
                      :m => '400x400#',
                      :s => '300x240>'
                    }
                    # S3を使用するときの設定
                    # :storage => :s3,
                    # :s3_permissions => :public,
                    # :s3_credentials => "#{Rails.root}/config/s3.yml",
                    # :path => ":attachment/:id/:style.:extension"
                    # :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    # :url => "/system/:attachment/:id/:style/:filename"

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
