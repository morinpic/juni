module ApplicationHelper
  def hero_path(p)
    if p.present?
      # ランダムで画像パスを取得
      p[rand(p.count)].pictures[0].image.url(:l)
    end
  end
end
