//
//  SENTDetectionStatus.swift
//  
//
//  Created by Afees Lawal on 10.03.24.
//

import UIKit

// MARK: - Enums

public enum SENTDetectionStatus: UInt {
    case disabled
    case expired
    case enabledButBlocked
    case enabledAndDetecting
}

public enum SENTSDKInitState: UInt {
    case notInitialized = 1
    case inProgress = 2
    case initialized = 3
    case resetting = 4
}

public enum SENTQuotaStatus: UInt {
    case ok = 1
    case warning = 2
    case exceeded = 3
}

public enum SENTResetFailureReason: UInt {
    case initInProgress = 1
    case resetting = 2
}

public enum SENTLocationPermission: UInt {
    case always = 1
    case whileInUse = 2
    case never = 3
}

public enum SENTStartStatus: UInt {
    case notStarted
    case pending
    case started
    case expired
}


// MARK: - SENTSDKStatus

public class SENTSDKStatus: NSObject {
    public var canDetect: Bool
    public var isRemoteEnabled: Bool
    public var locationPermission: SENTLocationPermission
    public var isPreciseLocationAuthorizationGranted: Bool
    public var isAccelPresent: Bool
    public var isGyroPresent: Bool
    public var isGpsPresent: Bool
    public var wifiQuotaStatus: SENTQuotaStatus
    public var mobileQuotaStatus: SENTQuotaStatus
    public var diskQuotaStatus: SENTQuotaStatus
    public var startStatus: SENTStartStatus
    public var userExists: Bool
    public var detectionStatus: SENTDetectionStatus
    public var isDeviceLowPowerModeEnabled: Bool
    public var isMotionActivityPermissionGranted: Bool
    public var backgroundRefreshStatus: UIBackgroundRefreshStatus

    public init(canDetect: Bool, isRemoteEnabled: Bool, locationPermission: SENTLocationPermission, isPreciseLocationAuthorizationGranted: Bool, isAccelPresent: Bool, isGyroPresent: Bool, isGpsPresent: Bool, wifiQuotaStatus: SENTQuotaStatus, mobileQuotaStatus: SENTQuotaStatus, diskQuotaStatus: SENTQuotaStatus, startStatus: SENTStartStatus, userExists: Bool, detectionStatus: SENTDetectionStatus, isDeviceLowPowerModeEnabled: Bool, isMotionActivityPermissionGranted: Bool, backgroundRefreshStatus: UIBackgroundRefreshStatus) {
        self.canDetect = canDetect
        self.isRemoteEnabled = isRemoteEnabled
        self.locationPermission = locationPermission
        self.isPreciseLocationAuthorizationGranted = isPreciseLocationAuthorizationGranted
        self.isAccelPresent = isAccelPresent
        self.isGyroPresent = isGyroPresent
        self.isGpsPresent = isGpsPresent
        self.wifiQuotaStatus = wifiQuotaStatus
        self.mobileQuotaStatus = mobileQuotaStatus
        self.diskQuotaStatus = diskQuotaStatus
        self.startStatus = startStatus
        self.userExists = userExists
        self.detectionStatus = detectionStatus
        self.isDeviceLowPowerModeEnabled = isDeviceLowPowerModeEnabled
        self.isMotionActivityPermissionGranted = isMotionActivityPermissionGranted
        self.backgroundRefreshStatus = backgroundRefreshStatus
    }

    public func isEqualToSDKStatus(_ sdkStatus: SENTSDKStatus) -> Bool {
        return false
    }
}
