# A simple web server
from http.server import HTTPServer, BaseHTTPRequestHandler

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"Hello from my Docker container!")

print("Server starting on port 8080...")
HTTPServer(("", 8080), Handler).serve_forever()
