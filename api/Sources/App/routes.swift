import Fluent
import Vapor

func routes(_ app: Application) throws {
  app.get { req in
    return "It works!"
  }

  app.get("hello") { req -> String in
    let query = req.query["name"] ?? "undefinied"
    return "Hello \(query)"
  }

}