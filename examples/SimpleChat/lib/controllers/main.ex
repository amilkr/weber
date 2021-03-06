defmodule Simplechat.Main.Login do
  
  import Weber.Session

  def render_login("GET", []) do
    {:render, [], []}
  end

  def join("POST", [{"username", username}]) do
  	set_session_val(:username, username)
    {:json, [result: :ok, username: username], [{"Content-Type", "application/json"}]}
  end

end