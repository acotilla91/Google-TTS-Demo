# Google Text-to-Speech Demo

This demo app showcases how to use Google Cloud Text-to-Speech API on iOS. Google’s TTS API is very powerful and the available voices sound extremely fluent and natural. More  details on the API can be found here https://cloud.google.com/text-to-speech/.

## How to enable the TTS API
As with any Google Cloud API, the API has to be enabled on a project within the Google Cloud Console and all the API calls will be associated to that project.
To setup a project in the Google Cloud Console, you can follow all the steps described [here](https://cloud.google.com/text-to-speech/docs/quickstart-protocol), except that this demo app requires an API key instead of a service account key.

### Summarized steps:

1.  Create a project (or use an existing one) in the [Cloud Console](https://console.cloud.google.com/).
2.  Make sure that [billing](https://console.cloud.google.com/billing?project=_) is enabled for your project.
3.  Enable the [Text-to-Speech API](https://console.cloud.google.com/flows/enableapi?apiid=texttospeech.googleapis.com).
4.  Create an [API key](https://console.cloud.google.com/apis/credentials?project=_).

## Running the app
1.  Clone this repo 
	```
	$ git clone https://github.com/acotilla91/Google-TTS-Demo.git
	```
2.  Open project in Xcode.
3.  Go to the `SpeechService` class and replace `<YOUR_API_KEY>` with the actual API key that was obtained from the steps above.
4.  Run the app. Should work on both, the device and simulator.

### Know issues

 - The standard voices tend to fail. May be a temporal bug on Google's
   side, since this is still a beta API.
