//
//  SENTResult.swift
//  
//
//  Created by Afees Lawal on 10.03.24.
//

import Foundation

public typealias SENTUserCreationCompletionHandler = (_ result: SENTUserCreationResult?, _ error: SENTUserCreationError?) -> Void

public typealias SENTUserLinkingCompletionHandler = (_ result: SENTUserLinkingResult?, _ error: SENTUserLinkingError?) -> Void

public class SENTEnableDetectionsResult: SENTDetectionsOperationResult {}

public class SENTDisableDetectionsResult: SENTDetectionsOperationResult {}

public class SENTUserLinkingResult {}

public typealias SENTEnableDetectionsCompletionHandler = (_ result: SENTEnableDetectionsResult?, _ error: SENTEnableDetectionsError?) -> Void

public typealias SENTDisableDetectionsCompletionHandler = (_ result: SENTDisableDetectionsResult?, _ error: SENTDisableDetectionsError?) -> Void

public typealias SENTUserLinker = (
    _ installId: String,
    _ linkSuccess: @escaping () -> Void,
    _ linkFailure: @escaping () -> Void
) -> Void

public class SENTDetectionsOperationResult {
    let sdkStatus: SENTSDKStatus
    let detectionStatus: SENTDetectionStatus

    init(sdkStatus: SENTSDKStatus) {
        self.sdkStatus = sdkStatus
        self.detectionStatus = sdkStatus.detectionStatus
    }
}

public struct SENTOptions {
    public enum InitializationReason {
        case appLaunch
        case delayedSdkInitialization
    }

    public init(for reason: InitializationReason) {}
}

public struct SENTUserCreationResult {
    public let userInfo: UserInfo
}

public struct UserInfo {
    let userId: String
}

public class SENTUserCreationOptions {
    public var appId: String?
    public var secret: String?
    public var authCode: String?
    public var linker: SENTUserLinker?
    public var platformUrl: String?

    public init(
        appId: String?,
        secret: String?,
        authCode: String?,
        linker: SENTUserLinker?,
        platformUrl: String?
    ) {
        self.appId = appId
        self.secret = secret
        self.authCode = authCode
        self.linker = linker
        self.platformUrl = platformUrl
    }
}
