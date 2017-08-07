#if os(Linux)
import Glibc
#else
import Darwin
#endif

// Array sample from http://stackoverflow.com/a/24101606
extension Array {
    func sample() -> Element {
        #if os(Linux)
        let randomIndex = Int(rand()) % count
        #else
        let randomIndex = Int(arc4random_uniform(UInt32(count)))
        #endif
        return self[randomIndex]
    }
}

struct Joke {
  let content: String
  static let builtinJokes = [
    "Wanted: Swift developer with 5 years experience.",
    "Something... Taylor Swift? That's funny right?",
    "Swift: still not Lisp.",
  ]

  init(_ content: String) {
    self.content = content
  }

  static func tell() -> Joke {
    let joke = Joke(Joke.builtinJokes.sample())
    return joke
  }
}

