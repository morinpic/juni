module ApplicationHelper
  def hero_path(p)
    if p.present?
      p[0].pictures[0].image.url(:l)
    end
  end
end
