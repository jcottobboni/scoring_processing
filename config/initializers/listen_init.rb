listener = Listen.to('public/score_files') do |modified, added, removed|
  puts "added absolute path: #{added}"
  if added.present?
    Score.import(added)
  end
end
listener.start
sleep