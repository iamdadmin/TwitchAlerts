const logger = require('../modules/logger.js');
const FetchLive = require('../services/fetchLive');
const {ReverseProxyAdapter, EventSubHttpListener} = require('@twurple/eventsub-http');
const {AppTokenAuthProvider} = require('@twurple/auth');
const {ApiClient} = require('@twurple/api');

module.exports = async client => {
    logger.log(`${client.user.tag}, ready to serve ${client.guilds.cache.map(g => g.memberCount).reduce((a, b) => a + b)} users in ${client.guilds.cache.size} servers.`, 'ready');
    await client.application.fetch();
    await client.application.commands.fetch();

    let webhooks = [];

    const fl = new FetchLive(client, webhooks);
    client.container.pg.passFetchLive(fl);

    await require('../web.js')(client.container.pg, client, client.container.twitch, fl);
};
