import Vapor

func routes(_ app: Application) throws {
  app.get { req in
    return "It works!"
  }

  app.get("hello") { req -> String in
    guard let query = req.query[String.self, at: "name"] else {
      throw Abort(.badRequest, reason: "Missing name param.")
    }
    return "Hello \(query)!"
  }

}
