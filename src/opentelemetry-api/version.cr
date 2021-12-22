module OpenTelemetry
  {% begin %}
  # Pull the version directly from Git.
  VERSION = {{ `git describe --tags --always`.chomp.split(/-/).first.stringify }}
  {% end %}
end
