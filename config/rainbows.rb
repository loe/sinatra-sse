Rainbows! do
  use :EventMachine
  worker_connections 1024
end

worker_processes 2
timeout 180
