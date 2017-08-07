#if os(Linux)
import Glibc
#else
import Darwin
#endif
import Curassow
import Inquiline

serve { request in
  if request.path == "/joke" {
    let joke = Joke.tell()
    return Response(.ok, contentType: "text/plain", content: joke.content)
  } else {
    return Response(.notFound, contentType: "text/plain", content: "Not Found")
  }
}
