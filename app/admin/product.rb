ActiveAdmin.register Product do

  permit_params :title, :body, { pictures_attributes: [ :image, :id, :_destroy ] }

  index do
    selectable_column
    id_column
    column "Title", :title
    column "Body", :body
    column "Picture" do |p|
      p.pictures[0] ? image_tag(p.pictures[0].image.url(:m), width: '200') : ''
    end
    actions
  end

  form do |f|
    inputs  do
      input :title
      input :body
      has_many :pictures, heading: "Pictures", allow_destroy: true, new_record: true do |u|
        u.input :image, :as => :file, input_html: { accept: 'image/*' },
        # :hint => u.object.new_record? ? "プロフィール画像を指定して下さい" : u.template.image_tag(u.object.image.url(:m))
        :hint => u.object.new_record? ? "" : u.template.image_tag(u.object.image.url(:m))
      end
    end
    actions
  end

  show do |product|
    attributes_table do
      row :title
      row :body
      row :picture do
        product.pictures[0] ? image_tag(product.pictures[0].image.url(:m), width: '200') : ''
      end
    end
  end
end
