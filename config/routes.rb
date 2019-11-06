Rails.application.routes.draw do
  namespace 'api' do
   get 'apps', to: 'apps#index'
    post 'apps', to: 'apps#create'
    put '/apps/:id', to: 'apps#update'
    get 'apps/:token/chats', to: 'chats#index'
   post 'apps/:token/chats', to: 'chats#create'
   put 'apps/:token/chats/:chat_id', to: 'chats#update'
   get 'apps/:token/chats/:chat_id/messages', to: 'messages#index'
   post 'apps/:token/chats/:chat_id/messages/', to: 'messages#create'
    get 'apps/:token/chats/:chat_id/messages/search', to: 'messages#search'



  end
end
