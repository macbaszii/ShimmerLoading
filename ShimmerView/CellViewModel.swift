//
//  CellViewModel.swift
//  ShimmerView
//
//  Created by Kiattisak Anoochitarom on 7/5/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import Foundation

class CellViewModel {
    private var profile: SimpleProfile
    
    init(profile: SimpleProfile) {
        self.profile = profile
    }
    
    var name: String {
        return self.profile.name
    }
    
    var email: String {
        return self.profile.email
    }
}
