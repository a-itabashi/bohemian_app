class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    post = Post.create!(content: data['content'], music_id: data['music_id'])
    template = ApplicationController.renderer.render(partial: 'posts/post', locals: {post: post})
    ActionCable.server.broadcast 'room_channel' ,template
  end
end


