//
//  ProfileCell.swift
//  ShimmerView
//
//  Created by Kiattisak Anoochitarom on 7/5/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
}

extension ProfileCell {
    func configureCell(with viewModel: CellViewModel) {
        nameLabel.text = viewModel.name
        emailLabel.text = viewModel.email
    }
}
