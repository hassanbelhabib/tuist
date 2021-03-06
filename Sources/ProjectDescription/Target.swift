import Foundation

// MARK: - Target

public class Target: Codable {
    /// Target name.
    public let name: String

    /// Product platform.
    public let platform: Platform

    /// Product type.
    public let product: Product

    /// Bundle identifier.
    public let bundleId: String

    /// Relative path to the Info.plist file.
    public let infoPlist: String

    /// Relative path to the entitlements file.
    public let entitlements: String?

    /// Target settings.
    public let settings: Settings?

    /// Target dependencies.
    public let dependencies: [TargetDependency]

    /// Relative paths to the sources directory.
    public let sources: FileList?

    /// Relative paths to the resources directory.
    public let resources: FileList?

    /// Headers.
    public let headers: Headers?

    /// Target actions.
    public let actions: [TargetAction]

    /// CoreData models.
    public let coreDataModels: [CoreDataModel]

    /// Environment variables to be exposed to the target.
    public let environment: [String: String]

    public enum CodingKeys: String, CodingKey {
        case name
        case platform
        case product
        case bundleId = "bundle_id"
        case infoPlist = "info_plist"
        case entitlements
        case settings
        case dependencies
        case sources
        case resources
        case headers
        case coreDataModels = "core_data_models"
        case actions
        case environment
    }

    /// Initializes the target.
    ///
    /// - Parameters:
    ///   - name: target name.
    ///   - platform: product platform.
    ///   - product: product type.
    ///   - bundleId: bundle identifier.
    ///   - infoPlist: relative path to the Info.plist file.
    ///   - sources: relative paths to the sources directory.
    ///   - resources: relative paths to the resources directory.
    ///   - headers: headers.
    ///   - entitlements: relative path to the entitlements file.
    ///   - actions: target actions.
    ///   - dependencies: target dependencies.
    ///   - settings: target settings.
    ///   - coreDataModels: CoreData models.
    ///   - environment: Environment variables to be exposed to the target.
    public init(name: String,
                platform: Platform,
                product: Product,
                bundleId: String,
                infoPlist: String,
                sources: FileList? = nil,
                resources: FileList? = nil,
                headers: Headers? = nil,
                entitlements: String? = nil,
                actions: [TargetAction] = [],
                dependencies: [TargetDependency] = [],
                settings: Settings? = nil,
                coreDataModels: [CoreDataModel] = [],
                environment: [String: String] = [:]) {
        self.name = name
        self.platform = platform
        self.bundleId = bundleId
        self.product = product
        self.infoPlist = infoPlist
        self.entitlements = entitlements
        self.dependencies = dependencies
        self.settings = settings
        self.sources = sources
        self.resources = resources
        self.headers = headers
        self.actions = actions
        self.coreDataModels = coreDataModels
        self.environment = environment
    }
}
