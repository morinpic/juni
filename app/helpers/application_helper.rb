module ApplicationHelper
  def hero_path(p)
    if p.present?
      # ランダムで画像パスを取得
      num = rand(p.count)
      p[num].pictures[0].present? ? p[num].pictures[0].image.url(:l) : ''
    end
  end
end
