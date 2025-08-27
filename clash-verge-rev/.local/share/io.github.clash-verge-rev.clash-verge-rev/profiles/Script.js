// Define main function (script entry)


const prependRuleDomainSuffix = [
    "bing.com",
    "archlinux.org"
]
const prependRule = [
    ...prependRuleDomainSuffix.map(domain => `DOMAIN-SUFFIX,${domain},DIRECT`),
]

function main(config, profileName) {
    console.log(`Profile: ${profileName}`)

    let oldrules = config["rules"]
    config["rules"] = prependRule.concat(oldrules)

    return config
}
