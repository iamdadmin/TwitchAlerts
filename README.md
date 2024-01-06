# Twitch Alerts

I am NOT affiliated with Twitch.

# Copyright & Credits

This bot originally written by and full credits to [Harfeur](https://github.com/Harfeur/TwitchAlerts) under the MIT License.

Accordingly I have made this fork so I can run it with a SQLite database, and I have created a docker script for it.

Harfeur hosts a public instance of the original bot, you can add that to your server via the link above.

I do not host a public instance of the sqlite bot, it is active for my own use only, however you can download this code and run it yourself, if you know what you are doing.

If you find any issues, you can report it here https://github.com/iamdadmin/TwitchAlerts-sqlite/issues if it is strictly related to the SQLite version I am publishing here.

## How to use  ?

### Host your own bot using node directly

You are allowed to host the bot and make changes, but you need to respect the license : You can't use the bot as a commercial purpose (you can't make money using the bot).

To host the bot, you can download all the files, run `npm install` and then rename .env.example to .env and customise it.

You can then run the bot with `node index.js` and (optionally) the webserver with `node web.js`.

### Host your own bot using Docker

I've set this up for compose, as I'm building custom images. If you know what you're doing you can convert these to function under docker run instead but I'm not currently providing that.

Sample docker-compose.yaml
```docker

```

## License

Inspired from GuideBot (see LICENSE)

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
