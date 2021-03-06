//
// Created by Mac Book on 9/7/20.
//

import Foundation

class CBEnvironment {
    static var site: String = ""
    static var publishableApiKey: String = ""
    static var encodedApiKey: String = ""
    static var baseUrl: String = ""
    static var allowErrorLogging: Bool = true

    static func configure(site: String, publishableApiKey: String, allowErrorLogging: Bool) {
        CBEnvironment.site = site
        CBEnvironment.publishableApiKey = publishableApiKey
        CBEnvironment.allowErrorLogging = allowErrorLogging
        CBEnvironment.encodedApiKey = CBEnvironment.publishableApiKey.data(using: .utf8)?.base64EncodedString() ?? ""
        CBEnvironment.baseUrl = "https://\(CBEnvironment.site).chargebee.com/api"
    }
}
