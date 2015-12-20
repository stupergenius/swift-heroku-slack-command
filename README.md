# Swift Heroku Slack Command

This is a simple Slack Command Integration implemented in Swift using the [Curassow](https://github.com/kylef/Curassow) webserver which uses a pre-fork worker model.

The complanion blog post can be found on my [Open Source Swift]() blog.

## Usage

*Note*: This will currently only build with the 12-01 snapshot release of Swift, not with the most recent 12-18 snapshot. The updated Swift package manager broke the Curassow build for version 0.2. The Curassow devs have already fixed this issue, but the fix hasn't made it into a release yet. For now, just use the 12-01 snapshot of Swift to build this project. The Swift buildpack (linked below) will already pull the correct snapshot of Swift to use on Heroku (via the `.swift-version` file), so deployment should still be good.

```shell
$ swift build --configuration release
$ ./.build/release/SlackJokeCommand
Listening on 0.0.0.0:8000
```

### Deployment

This example can be deployed to Heroku using the
[heroku-buildpack-swift](https://github.com/kylef/heroku-buildpack-swift).

