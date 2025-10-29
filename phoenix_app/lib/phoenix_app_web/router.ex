defmodule PhoenixAppWeb.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, """
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Phoenix App - Basic Phoenix Site</title>
        <style>
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
          }
          .container {
            text-align: center;
            padding: 2rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
            max-width: 600px;
          }
          h1 {
            color: #333;
            margin-bottom: 1rem;
          }
          p {
            color: #666;
            line-height: 1.6;
          }
          .phoenix-logo {
            font-size: 4rem;
            margin-bottom: 1rem;
          }
          .info {
            margin-top: 2rem;
            padding: 1rem;
            background: #f0f0f0;
            border-radius: 5px;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="phoenix-logo">🔥</div>
          <h1>Welcome to Phoenix!</h1>
          <p>This is a basic Phoenix-style site built with Elixir.</p>
          <p>Peace of mind from prototype to production.</p>
          <div class="info">
            <p><strong>Built with:</strong> Elixir + Plug + Cowboy</p>
            <p><strong>Server:</strong> Running on port 4000</p>
          </div>
        </div>
      </body>
    </html>
    """)
  end

  match _ do
    send_resp(conn, 404, "Page not found")
  end
end
