Rails.application.routes.draw do
  get '/part1', to: 'part1#permutate'

  get '/part2/all', to: 'part2#all'
  put '/part2/register/:id', to: 'part2#register_task'
  put '/part2/complete/:id', to: 'part2#complete_task'
  get '/part2/', to: 'part2#get_status'

end
