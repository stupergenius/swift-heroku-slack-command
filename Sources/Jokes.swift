#if os(Linux)
import Glibc
#else
import Darwin
#endif

extension Array {
    func sample() -> Element {
        let randomIndex = Int(rand()) % count
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

