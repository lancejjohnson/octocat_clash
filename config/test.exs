use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :octocat_clash, OctocatClash.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :octocat_clash, OctocatClash.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "octocat_clash_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
