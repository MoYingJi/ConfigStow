// Define main function (script entry)


const prependRuleDomainSuffix = [
    "archlinux.org",
    "bing.com",
    "ghfast.top",
    "mozilla.org",
]
const prependRule = [
    "DST-PORT,22,DIRECT", // SSH 端口 22 直连
    ...prependRuleDomainSuffix.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]

function main(config, profileName) {
    console.log(`Profile: ${profileName}`)

    let oldrules = config["rules"]
    config["rules"] = prependRule.concat(oldrules)

    return config
}
