module ProjectsHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end


  def portfolio_img img, type 
    if img.model.image
      img
    else
      image_generator(height: '350', width: '200')
    end
  end
end
