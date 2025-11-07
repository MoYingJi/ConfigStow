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
    "mozilla.org",
    "office365.com",
    "outlook.live.com",
    "stevexmh.net",
    "vuejs.org",
]

const prependRules = [
    "DST-PORT,22,DIRECT", // SSH 端口 22 直连
    ...processDirect.map(process => `PROCESS-NAME,${process},DIRECT`),
    ...domainDirect.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]

function main(config) {
    config.rules = prependRules.concat(config.rules)

    return config
}
