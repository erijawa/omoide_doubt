module ApplicationHelper
  def flash_background_color(type)
    case type.to_sym
    when :success then "bg-green-500"
    when :danger  then "bg-red-500"
    when :error  then "bg-yellow-500"
    else "bg-gray-500"
    end
  end

  def default_meta_tags
    {
      site: '思い出ダウト！',
      title: '思い出ダウト！',
      reverse: true,
      charset: 'utf-8',
      description: '写真と共に投稿される思い出について、それが本当の話か、それともダウト(作り話)か判定するゲームです',
      keywords: 'ミニアプリウィーク, RUNTEQ',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('top_img.png'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@riviere_rouge',
        image: image_url('top_img.png'),
      }
    }
  end
end
