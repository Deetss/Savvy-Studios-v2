class ProcessImageVariantsJob < ApplicationJob
  queue_as :urgent

  def perform(*images)

  end
end
