get '/' do
  @albums = Album.all
  erb :index
end


#----------- SESSIONS -----------

get '/sessions/new' do
  # render sign-in page 
  erb :sign_in
end

post '/sessions' do
  # sign-in
  if User.authenticate(params[:email], params[:password])
    @user = User.find_by_email(params[:email])
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :sign_in
  end
end

get '/sessions/:id' do
  session[:user_id] = nil
  redirect '/'
end

#----------- USERS -----------

get '/users/new' do
  # render sign-up page
  erb :sign_up
end

post '/users' do
  @user = User.create(params)
  # sign-up a new user
  erb :sign_in
end
#-----album---
post '/albums/:id' do
    photo = current_user.albums.find(params[:id]).photos.new()
    photo.file = params[:image]
    photo.save
end
