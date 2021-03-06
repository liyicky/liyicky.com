class Post < ActiveRecord::Base
  has_one_attached :main_image
  validate :acceptable_image
  validates :title, :description, :main_image, presence: true

  def acceptable_image
    return unless main_image.attached?

    unless main_image.byte_size <= 1.megabyte
      errors.add(:main_image, "too big")
    end

    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(main_image.content_type)
      errors.add(:main_image, "must be a JPEG or PNG")
    end
  end
end
