defmodule PhoenixAppWeb.PageController do
  use Phoenix.Controller, namespace: PhoenixAppWeb

  def index(conn, _params) do
    html(conn, """
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
        </style>
      </head>
      <body>
        <div class="container">
          <div class="phoenix-logo">🔥</div>
          <h1>Welcome to Phoenix!</h1>
          <p>This is a basic Phoenix site built with Elixir.</p>
          <p>Peace of mind from prototype to production.</p>
        </div>
      </body>
    </html>
    """)
  end
end
