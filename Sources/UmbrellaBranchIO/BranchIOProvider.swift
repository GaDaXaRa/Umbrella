import Foundation
import Branch

#if !COCOAPODS
import Umbrella
#endif

open class BranchIOProvider: ProviderType {
  func log(_ eventName: String, parameters: [String: Any]?) {
    let event = BranchEvent.customEvent(withName: eventName)
    if let parameters = parameters as? NSMutableDictionary {
        event.customData = parameters
    }
	event.logEvent()
  }
}
