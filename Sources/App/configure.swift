import Vapor
import Leaf
// configures your application



public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    
    //use leaf templating :)
    app.views.use(.leaf)
    	
    try routes(app)
    
    
    
}
