// Global Script

const prependRulesDomainSuffix = [
    "archlinux.org",
    "bing.com",
    "codeberg.org",
    "d2learn.org",
    "ghfast.top",
    "mozilla.org",
    "office365.com",
]
const prependRules = [
    "DST-PORT,22,DIRECT", // SSH 端口 22 直连
    ...prependRulesDomainSuffix.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]

function main(config) {
    config.rules = prependRules.concat(config.rules)

    return config
}
