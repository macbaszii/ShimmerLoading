//
//  ViewModel.swift
//  ShimmerView
//
//  Created by Kiattisak Anoochitarom on 7/5/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import Foundation

class ViewModel {
    private var profiles = [SimpleProfile]()
    
    var isLoading = false
    var shouldShowPlaceholder: Bool {
        return numberOfRows() == 0
    }
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func profile(at indexPath: NSIndexPath) -> SimpleProfile {
        return profiles[indexPath.row]
    }
    
    func loadProfiles(with completion: () -> ()) {
        isLoading = true
        
        delay(3.0) { 
            self.isLoading = false
            self.profiles = [SimpleProfile(name: "Bas", email: "macbaszii@gmail.com"),
                             SimpleProfile(name: "Oozou", email: "job@oozou.com"),
                             SimpleProfile(name: "Steve", email: "jobs@apple.com")]
            
            completion()
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}
