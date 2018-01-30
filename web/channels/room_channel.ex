defmodule LoopaChat.RoomChannel do
	use Phoenix.Channel

	def join("room:lobby", _message, socket) do 
		{:ok, socket}
	end

	def handle_in("new_msg", %{"body" => body, "name" => name}, socket) do
		broadcast! socket, "new_msg", %{body: body, name: name }
		{:noreply, socket}
	end

	def handle_out("new_msg", payload, socket) do
		push socket, "new_msg", payload
		{:noreply, socket}
	end
end