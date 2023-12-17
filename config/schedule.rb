# frozen_string_literal: true

every 1.hour do
  runner 'UpdateReturnedWorker.perform_async'
end
