require "delayed_job"

if defined?(Rails)
  require "delayed/backend/active_record/engine"
else
  require "active_record"
  require "delayed/backend/active_record"

  Delayed::Worker.backend = :active_record
end
