Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "root#index"
  #
  # ランキング的な？
  # https://www.amazon.co.jp/gp/most-gifted
  # https://www.amazon.co.jp/gp/new-releases/diy/ref=zg_bsnr_nav_0
  get "gp/:gorup_code/"  => "rankings#show"
  get "gp/:group_code/:target_code"  => "rankings#show_target"

  # おそらくカテゴリ的な？ (node= がないと404)
  # https://www.amazon.co.jp/%E6%96%87%E5%BA%AB-%E6%96%B0%E6%9B%B8-%E6%9C%AC/b/?ie=UTF8&node=466300&ref_=sv_b_7
  get ":title/b" => "categories#show"

  # 商品
  # https://www.amazon.co.jp/%E3%82%86%E3%82%8B%E3%82%AD%E3%83%A3%E3%83%B3%E2%96%B3-10-%E3%81%BE%E3%82%93%E3%81%8C%E3%82%BF%E3%82%A4%E3%83%A0KR%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E3%81%82f%E3%82%8D/dp/4832271741
  # https://www.amazon.co.jp/dp/4832271741
  get ":title/dp/:id" => "products#show"
  get "dp/:id" => "products#show"
end
