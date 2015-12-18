import Glibc
import Curassow
import Inquiline

serve { request in
  if request.path == "/joke" {
    return Response(.Ok, contentType: "text/plain", body: "A duck walks into a bar...")
  } else {
    return Response(.NotFound, contentType: "text/plain", body: "Not Found")
  }
}
