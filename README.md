# Jdowloader-Reconnect
### _JDownloader Reconnection script using NordVPN to avoid download limits_

- Automatic connection to different countries.
- You can choose different countries to connect or create your own list.
- Check connection to avoid losing time when fails to connect.

## Config

Set the directory where your JDownloader.exe is located. The path must be inside double quotes.

```
Set jdownloaderpath="C:\Users\Franco\AppData\Local\JDownloader 2.0"
```

Set the list of countries that you want to be connected.
All supported countries by NordVPN and the ones that bypass 1fichier limits are included.
```
Set filename=all.txt
```

Set the timeout (in seconds) to go to the checking script. I set 30 to default because some countries take more time to connect, but if you connect to your country or it takes less time, lower values would be better. 
```
Set connectiontimeout=30
```

Set the time to start the loop again. 800 seconds are 13 minutes that are the average for a 50MBs connection. You should change it depending on how mamy takes for your connection to reach the download limit.
```
Set downloadtime=800
```

## Development

Want to contribute? Great!
Send a PR and I will check as soon as possible.
