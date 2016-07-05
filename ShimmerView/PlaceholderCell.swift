//
//  PlaceholderCell.swift
//  ShimmerView
//
//  Created by Kiattisak Anoochitarom on 7/5/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import UIKit
import Shimmer

class PlaceholderCell: UITableViewCell {
    @IBOutlet var nameShimmerView: FBShimmeringView!
    @IBOutlet var emailShimmerView: FBShimmeringView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .None
        
        let content = UIView()
        content.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        nameShimmerView.contentView = content
        
        let emailContent = UIView()
        emailContent.backgroundColor = UIColor(white: 0.95, alpha: 1)

        emailShimmerView.contentView = emailContent
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameShimmerView.shimmering = true
        emailShimmerView.shimmering = true
    }
}
