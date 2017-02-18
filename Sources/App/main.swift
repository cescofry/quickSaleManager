import Kitura
import LoggerAPI
import HeliumLogger

Log.logger = HeliumLogger()


// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

// Add an HTTP server and connect it to the router
let server = Kitura.addHTTPServer(onPort: 8080, with: router)

// Start the Kitura runloop (this call never returns)

Kitura.run()

print("Exiting ... [state: \(server.state)]")
