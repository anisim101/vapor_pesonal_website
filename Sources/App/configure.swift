import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    app.views.use(.leaf)
    let fileMiddleware = FileMiddleware(publicDirectory: app.directory.publicDirectory)
    app.middleware.use(fileMiddleware)
    try routes(app)
}
