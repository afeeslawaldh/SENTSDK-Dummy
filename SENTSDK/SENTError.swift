//
//  SENTError.swift
//  
//
//  Created by Afees Lawal on 10.03.24.
//

import Foundation

/// Failure issues when enabling detections.
enum SENTEnableDetectionsFailureReason: UInt {
    /// No user present on the device. Call `createUserWithOptions:completionHandler:` to create a user.
    case noUser = 0

    /// Expiry date is in past.
    case pastExpiryDate

    /// The user is disabled remotely.
    case userDisabledRemotely
}

public struct SENTUserCreationError {}

public struct SENTUserLinkingError {}

public class SENTDisableDetectionsError {}

public class SENTEnableDetectionsError {
    let sdkStatus: SENTSDKStatus
    let detectionStatus: SENTDetectionStatus
    let failureReason: SENTEnableDetectionsFailureReason

    init(sdkStatus: SENTSDKStatus, failureReason: SENTEnableDetectionsFailureReason) {
        self.sdkStatus = sdkStatus
        self.detectionStatus = sdkStatus.detectionStatus
        self.failureReason = failureReason
    }
}
