# Swift Heroku Slack Command

This is a simple Slack Command Integration implemented in Swift using the [Curassow](https://github.com/kylef/Curassow) webserver which uses a pre-fork worker model.

The complanion blog post can be found on my [Open Source Swift]() blog.

## Usage

```shell
$ swift build --configuration release
$ ./.build/release/SlackJokeCommand
Listening on 0.0.0.0:8000
```

### Deployment

This example can be deployed to Heroku using the
[heroku-buildpack-swift](https://github.com/kylef/heroku-buildpack-swift).

