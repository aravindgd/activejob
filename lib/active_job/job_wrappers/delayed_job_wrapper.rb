require "delayed_job"
module ActiveJob
  module JobWrappers
    class DelayedJobWrapper
      def perform(job_name, *args)
        job_name.perform(*args)
      end
    end
  end
end
