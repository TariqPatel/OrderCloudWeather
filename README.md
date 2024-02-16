Considerations made for Weather Application:

Arcitecture chosen:
MVVM
I went with this approach as I am comfortable using it as I have used it in mnay apps.
I am very eager to hear your thoughts on it and if you feel it was a good choice or if a better arcitecture would fit this application.

Images used:
Images found on the internet

Folder Structure:
I encapsulated my main part of the application into a Features folder.
Which is then split off into individual features eg. home, forecast, detail etc.
I usually do this do make things easier to find when developing and also to ensure a good sepearation of concerns are kept.
I added a Services folder and file - PS: I do feel this could be made a bit more generic possible.
I did not want to spend too much time over- engineering (I would love to hear your thoughts on this.)
There is a Helpers method as well, I know this can be seen as a red flag. But I feel if it is well monitored it can be kept quite clean and only used when needed.
And then a Enum and a Models folder.

Unit tests:
I only added one very useless unit test, I just used to for demonstration purposes.
Usually we would try and get a 80% - 100% test coverage on atleast the viewmodels.

I look forward to hearing your feedback as when we developers communicate and talk things over(arctitecutre, tech stack etc.) is when the real magic happens.
