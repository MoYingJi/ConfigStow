// Global Script

const processDirect = [
    "sparkle",
    "SPlayer",
]

const domainDirect = [
    "archlinux.org",
    "archlinuxcn.org",
    "bgithub.xyz",
    "bing.com",
    "codeberg.org",
    "d2learn.org",
    "ghfast.top",
    "miyoushe.com",
    "mozilla.org",
    "naiveui.com",
    "office365.com",
    // "open.spotify.com",
    "outlook.live.com",
    "outlook.live.net",
    "stevexmh.net",
    "vuejs.org",
]

const prependRules = [
    "DST-PORT,22,PASS", // SSH 端口 22
    ...processDirect.map(process => `PROCESS-NAME,${process},DIRECT`),
    ...domainDirect.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]

function main(config) {
    config.rules = prependRules.concat(config.rules)

    return config
}
