//
//  HealthKitSetupAssistant.swift
//  EGK Interpreter
//
//  Created by Caroline Davis on 8/27/21.
//

import HealthKit

class HealthKitSetupAssistant {
    private enum HealthKitSetupError: Error {
        case notAvailableonDevice
        case dataTypeNotAvailable
    }
    
    class func authorizeHealthKit(completion: @escaping (Bool, Error?) -> Swift.Void) {
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false, HealthKitSetupError.notAvailableonDevice)
            return
        }
    }
}


