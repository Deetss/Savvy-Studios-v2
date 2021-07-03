class ImageWorker
  include Sidekiq::Worker

  def perform(*args)
    img_id, gallery_id = args

    gallery = Gallery.find_by_id(gallery_id)
    image = gallery.images.find(img_id)

    image.variant(combine_options: {auto_orient: true, gravity: 'center', resize: "500x700", compress: "lossless", quality: 5, sampling_factor: "4:2:0", interlace: "plane" }).processed
    image.variant(combine_options: {auto_orient: true, gravity: 'center', resize: "500x700", compress: "lossless", quality: 80, sampling_factor: "4:2:0", interlace: "plane" }).processed
    image.variant(combine_options: {auto_orient: true, gravity: 'center', resize: "1920x1080" })
  end
end
