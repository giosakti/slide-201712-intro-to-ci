@margin_left = screen_x(1)
@margin_right = screen_x(1)

# @title_slide_title_font_size = @large_font_size
# @title_slide_subtitle_font_size = @small_font_size

match(Slide, HeadLine) do |headlines|
  headlines.horizontal_centering = true

  # This code below already available as default theme
  # I put it here to show on how to style specific slide
  # headlines.each do |headline|
  #   slide = headline.slide
  #   headline.hide if slide["hide-title"] == true
  # end
end

match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

include_theme("default")
# include_theme("rabbit-theme-nyankosakana")
# include_theme("rabbit-theme-yart")
