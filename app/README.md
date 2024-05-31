# Jhanas

The first app that helps you go from zero to hero in reaching jhana.

### Issues:

Try to fix all the issues with the following command:
`flutter doctor -v`

**CocoaPods not installed**:

Update local ruby in mac os:

```
brew install ruby
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
echo 'export GEM_HOME=$HOME/.gem' >> ~/.zshrc
echo 'export PATH=$HOME/.gem/bin:$PATH' >> ~/.zshrc
gem install cocoapods
```

Read more here https://guides.cocoapods.org/using/getting-started.html#installation

*U*nable to get list of installed Simulator runtimes\*\*:

This will download the missing simulators:
`xcodebuild -downloadPlatform iOS`

## Firebase

We use Firebase for authentication as oidc.

https://firebase.google.com/docs/flutter/setup?platform=ios

Setup and run emulator
https://firebase.google.com/docs/emulator-suite/install_and_configure
