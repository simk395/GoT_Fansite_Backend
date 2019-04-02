The files in this folder were made with the intension of not needing to make REST requests to 'https://anapioficeandfire.com/api/' constantly. The API has a limit of 20,000 requests daily, and it would be quicker to just copy the data since it is not too large of an api.  This way if I were to need to re-seed the files it would not take very long. I understand that this makes the data outdated if they were to update the api. However, their database's latest info is up to season. At the time of developing this project, the release of season 8 is soon.

```
import RestClient
```
