import Foundation

public protocol Sentiance {
    static var shared: Sentiance { get }
    var sdkStatus: SENTSDKStatus { get }
    var isUserLinked: Bool { get }
    var userExists: Bool { get }
    var userId: String? { get }
    var detectionStatus: SENTDetectionStatus { get }

    func initialize(options: SENTOptions)
    func createUser(options: SENTUserCreationOptions, completionHandler: SENTUserCreationCompletionHandler?)
    func enableDetections(expiryDate: Date?, completionHandler: SENTEnableDetectionsCompletionHandler?)
    func disableDetections(completionHandler: SENTDisableDetectionsCompletionHandler?)
    func setDidReceiveSdkStatusUpdateHandler(_ handler: @escaping (SENTSDKStatus) -> Void)
    func requestUserAccessToken(completionHandler: @escaping SENTUserAccessTokenCompletionHandler)
}

final class SentianceImpl: Sentiance {
    static let shared: Sentiance = SentianceImpl()

    private init() {}

    func initialize(options: SENTOptions) {}

    func createUser(
        options: SENTUserCreationOptions,
        completionHandler: SENTUserCreationCompletionHandler?
    ) {
        completionHandler?(nil, nil)
    }

    func enableDetections(
        expiryDate: Date?,
        completionHandler: SENTEnableDetectionsCompletionHandler?
    ) {
        completionHandler?(nil, nil)
    }

    func disableDetections(completionHandler: SENTDisableDetectionsCompletionHandler?) {
        completionHandler?(nil, nil)
    }

    func setDidReceiveSdkStatusUpdateHandler(_ handler: @escaping (SENTSDKStatus) -> Void) {
        handler(sdkStatus)
    }

    func requestUserAccessToken(completionHandler: @escaping SENTUserAccessTokenCompletionHandler) {}


    var sdkStatus: SENTSDKStatus {
        .init(canDetect: false, isRemoteEnabled: false, locationPermission: .never, isPreciseLocationAuthorizationGranted: false, isAccelPresent: false, isGyroPresent: false, isGpsPresent: false, wifiQuotaStatus: .exceeded, mobileQuotaStatus: .exceeded, diskQuotaStatus: .exceeded, startStatus: .expired, userExists: false, detectionStatus: .disabled, isDeviceLowPowerModeEnabled: false, isMotionActivityPermissionGranted: false, backgroundRefreshStatus: .denied)
    }

    let isUserLinked: Bool = false

    let userExists: Bool = false

    let userId: String? = nil

    let detectionStatus: SENTDetectionStatus = .disabled
}
