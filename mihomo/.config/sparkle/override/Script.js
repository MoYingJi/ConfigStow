// Global Script

const processDirect = [
    // "sparkle",
    // "SPlayer",
]

const domainDirect = [
    "archlinux.org",
    "archlinuxcn.org",
    "bgithub.xyz",
    "bikonoo.com",
    "bing.com",
    "codeberg.org",
    "d2learn.org",
    "firefox.com",
    "ghfast.top",
    "imsyy.top",
    "miyoushe.com",
    "modrinth.com",
    "moyingji.one",
    "mozilla.org",
    "naiveui.com",
    "natchecker.com",
    "npmmirror.com",
    "office365.com",
    // "open.spotify.com",
    "outlook.live.com",
    "outlook.live.net",
    "stevexmh.net",
    "vuejs.org",
]

const prependRules = [
    "DST-PORT,22,DIRECT", // SSH 端口 22
    ...processDirect.map(process => `PROCESS-NAME,${process},DIRECT`),
    ...domainDirect.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]
const appendRules = [
    "GEOIP,CN,DIRECT",
]

function main(config) {
    config.rules = prependRules.concat(config.rules)

    const fallbackRuleIndex = config.rules.length - 1
    config.rules.splice(fallbackRuleIndex, 0, ...appendRules)

    return config
}
