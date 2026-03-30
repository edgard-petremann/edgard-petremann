# Edgard Petremann

- 👋 Hi, I'm @edgard-petremann
- 🌱 I'm currently learning Elixir language

## Basic Phoenix Site

This repository contains a basic Phoenix-style web application built with Elixir.

### Project Structure

The `phoenix_app` directory contains a web application built with:
- **Elixir 1.14** - Functional programming language
- **Plug** - Composable web middleware
- **Cowboy** - HTTP server for Erlang/OTP

### Features

- Simple web server running on port 4000
- Beautiful landing page with gradient design
- Built using Plug.Router for request handling
- Supervised application architecture

### Getting Started

#### Prerequisites

- Elixir 1.14 or higher
- Erlang/OTP 25 or higher
- Rebar3 (for compiling Erlang dependencies)

#### Installation

```bash
cd phoenix_app

# Install dependencies
mix deps.get

# Compile the project
mix compile

# Start the server
mix run --no-halt
```

The application will be available at `http://localhost:4000`

### Project Files

- `lib/phoenix_app_web/router.ex` - Main router handling HTTP requests
- `lib/phoenix_app/application.ex` - Application supervisor
- `lib/phoenix_app_web.ex` - Web module definitions
- `config/` - Configuration files for different environments
- `mix.exs` - Project dependencies and configuration

### Development

The application uses a simple Plug-based architecture, making it easy to understand and extend. The main router defines a GET route at "/" that serves an HTML page.

---

<!---
edgard-petremann/edgard-petremann is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
