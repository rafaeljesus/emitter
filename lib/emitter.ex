defmodule Emitter do
  use GenServer

  def init(args) do
    :gproc.reg({:p, :l, args[:topic]})
    {:ok, []}
  end

  def handle_info(message, state), do: {:noreply, state}

  def on(topic), do: GenServer.start_link(__MODULE__, [topic: topic], [])

  def emit(topic, message), do: :gproc.send({:p, :l, topic}, message)

  def listeners(topic), do: :gproc.lookup_pids({:p, :l, topic})
end
