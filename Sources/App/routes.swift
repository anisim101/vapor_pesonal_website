import Vapor

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index")
    }

    app.get("terms") { req async throws in
        try await req.view.render("terms")
    }
    
    app.get("privacy", ":app_name") { req async throws -> View in
        let app = req.parameters.get("app_name") ?? "app"
        return try await req.view.render("privacy", ["app": app])
    }
    
    app.get("app-ads.txt") { req in
        req.fileio.streamFile(at: "app-ads.txt")
    }
}
