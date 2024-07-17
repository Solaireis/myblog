import Vapor

func routes(_ app: Application) throws {
    //Workingg
    app.get { req async in
        "It works!"
    }
    
    //Hello World!
    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    //Hello name!
    app.get("hello", ":name") { req -> String in
        let name = req.parameters.get("name")!
        return "Hello, \(name)!"
    }
    
    //Bye Bye Page
    app.get("bye") { req async -> String in
        "Bye Bye!"
    }
    
    //Hello Leaf!!!
    app.get("hello") { req -> EventLoopFuture<View> in
        return req.view.render("hello", ["name": "Leaf"])
    }
}
