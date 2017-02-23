import Kitura
import LoggerAPI
import HeliumLogger



extension CommandLine {
    static var port: Int? {
        guard self.arguments.count >= 2,
            let port = Int(self.arguments[1])
            else {
                return nil
        }
        
        return port
    }
}

Log.logger = HeliumLogger()


// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

let port = CommandLine.port
if port == nil {
    Log.exit("Exiting ... No port specified")
}

// Add an HTTP server and connect it to the router
let server = Kitura.addHTTPServer(onPort: port!, with: router)

// Start the Kitura runloop (this call never returns)

Kitura.run()

Log.exit("Exiting ... (server state: \(server.state))")


