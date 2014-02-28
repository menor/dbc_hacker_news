get '/' do
  @posts = Post.all
  erb :index
end

get '/login' do
  erb :login_form
end

get '/posts/new' do
  erb :post_form
end

post '/users/new' do
  User.create(username: params[:username], password: params[:password])
end

post'/users' do
  @user = User.find_by_username(params[:username])
  if @user && params[:password] == @user.password
    session[:id] = @user.id
  end
  redirect '/'
end

post '/posts/new' do
  Post.create(title: params[:title], url: params[:url], user_id: session[:id] )
  redirect '/posts'
end

get '/posts' do
  redirect '/'
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end

get '/posts/:id' do
  session[:post_id] = params[:id]
  @post = Post.find(params[:id])
  @comments = Comment.find_all_by_post_id(@post.id)
  erb :post
end

post '/comments/new' do
  Comment.create( content: params[:comment], user_id: session[:id], post_id: session[:post_id] )
  redirect "/posts/#{session[:post_id]}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile_page
end

get '/users/:id/comments' do
  @user = User.find(params[:id])
  @user_comments = Comment.find_all_by_user_id(params[:id])
  erb :user_comments
end

get '/users/:id/posts' do
  @user = User.find(params[:id])
  @user_posts = Post.find_all_by_user_id(params[:id])
  erb :user_posts
end

