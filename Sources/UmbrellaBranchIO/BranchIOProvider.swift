import Foundation

#if !COCOAPODS
import Umbrella
import Branch
#endif

final class BranchIOProvider: ProviderType {
  func log(_ eventName: String, parameters: [String: Any]?) {
    let event = BranchEvent.customEvent(withName: eventName)
//    event.customData = parameters as! NSMutableDictionary
	event.logEvent()
  }
}
