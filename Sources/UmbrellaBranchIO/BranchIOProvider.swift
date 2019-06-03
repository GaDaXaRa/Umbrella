import Foundation

final class BranchIOProvider: ProviderType {
  func log(_ eventName: String, parameters: [String: Any]?) {
    let event = BranchEvent.customEventWithName(eventName)
    event.customData = parameters
	event.logEvent()
  }
}
