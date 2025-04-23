# app.py

import http.server
import socketserver

# Set the port for the server to listen on
PORT = 8080

# Define the handler to serve the static files
Handler = http.server.SimpleHTTPRequestHandler

# Create the server instance
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Serving at port {PORT}")
    httpd.serve_forever()
