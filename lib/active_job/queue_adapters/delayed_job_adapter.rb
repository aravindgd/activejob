require 'delayed_job'
require 'active_job/job_wrappers/resque_wrapper'

module ActiveJob
  module QueueAdapters
    class DelayedJobAdapter
      class << self
        def queue(job, *args)
          JobWrappers::DelayedJobWrapper.new.perform.delay(job, *args)
        end
      end
    end
  end
end
