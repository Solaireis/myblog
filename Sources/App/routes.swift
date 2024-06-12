import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    app.get("bye") { req async -> String in
        "Bye Bye!"
    }
}
