import Kitura

let router = Router()

router.get("/_ah/health") { _, response, next in
    response.send("👌")
    next()
}

router.get("/") { _, response, next in
    response.send("Swift running in Google App Engine!")
    next()
}

Kitura.addHTTPServer(onPort: 8080, with: router)

Kitura.run()
