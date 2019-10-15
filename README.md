# flutter-template-bloc

A (fairly) simple Flutter template that implements the BLOC pattern, Google's recommended approach
to state  management in Flutter apps.  For a little extra sauce the BLOC class uses RxDart streams
to pass data to the UI widgets.

I've been building and testing this on iOS but the Android project should run without issues.

## Installation

Simply clone the repo, start the iOS simulator and run the application.  For the purpose of
keeping things simple the repository returns mock data.  That said there's an example
of how to make an async API call using futures should you be interested.

```bash
open -a Simulator
flutter run
```

## Contributing
I've intentionally kept things as close to Google's recommended approach as possible but
feel free to open a pull request if you think it could be made simpler for Flutter novices
to understand.

## License
[MIT](https://choosealicense.com/licenses/mit/)