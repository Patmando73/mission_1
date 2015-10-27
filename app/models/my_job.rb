class MyJob

  @queue = :jobs_queue

  # to check redis:
  # run `redis-cli` and then type in 'PING'. if you get 'PONG' as a response then you're good.
  # if redis isn't running, run  `launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist`
  # FYI, to check the history of anything you'ved ran in console before run `history | egrep -i YOURTERMHERE`

  # change this to write a file to a folder called "downloads" (you'll need to created this.)
  # use Time.now.to_i to name the file.
  # the phrase "hello, world" should be the contents of each file.
  # File.open("fubar.txt", "w+") { |f| f << "hi there!" }

  def self.perform
    file = "downloads/#{Time.now.to_i}.txt"
    sleep 1
    puts "look at me!: #{file}"

    File.open(file, "w+") { |f| f << "hello, world" }
  end
end