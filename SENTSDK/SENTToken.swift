//
//  SENTUserContext.swift
//
//
//  Created by Afees Lawal on 13.03.24.
//

import Foundation

import Foundation

public class SENTToken: NSObject {
    public let tokenId: String
    public let expiryDate: Date
    public var isExpired: Bool {
       true
    }

    public init(tokenId: String, expiryDate: Date) {
        self.tokenId = tokenId
        self.expiryDate = expiryDate
    }
}

public class SENTUserInfo: NSObject {
    public let userId: String
    public let token: SENTToken

    public init(userId: String, token: SENTToken) {
        self.userId = userId
        self.token = token
    }
}

public enum SENTRequestUserContextFailureReason: UInt {
    case noUser
    case featureNotEnabled
    case userDisabledRemotely
}

public class SENTRequestUserContextError: NSObject {
    public var failureReason: SENTRequestUserContextFailureReason

    public init(failureReason: SENTRequestUserContextFailureReason) {
        self.failureReason = failureReason
    }
}

public class SENTUserAccessTokenResult: NSObject {
    var token: SENTToken

    init(token: SENTToken) {
        self.token = token
    }
}

public enum SENTUserAccessTokenFailureReason: UInt {
    case noUser = 0
    case networkError
    case userDisabledRemotely
}

public class SENTUserAccessTokenError: NSObject {
    public var failureReason: SENTUserAccessTokenFailureReason

    public init(failureReason: SENTUserAccessTokenFailureReason) {
        self.failureReason = failureReason
    }
}

// Completion Handler
public typealias SENTUserAccessTokenCompletionHandler = (SENTUserAccessTokenResult?, SENTUserAccessTokenError?) -> Void
