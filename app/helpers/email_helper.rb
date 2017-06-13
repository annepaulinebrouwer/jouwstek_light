module EmailHelper
  def email_image_url(image, **options)
    attachments.inline[image] = File.read(Rails.root.join("app/assets/images/#{image}"))
    image_url attachments[image].url, **options
  end

  def email_cl_image_path(image, **options)
    attachments.inline[image] = cl_image_path(image)
    cl_image_path attachments[image].url, **options
  end
end