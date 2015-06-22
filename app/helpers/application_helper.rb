module ApplicationHelper
  def category_path(str)
    link_to str, controller: 'products', action: 'index', type: str
  end

  def hero_path(p)
    if p.present?
      # ランダムで画像パスを取得
      num = rand(p.count)
      p[num].pictures[0].present? ? p[num].pictures[0].image.url(:l) : ''
    end
  end
end
