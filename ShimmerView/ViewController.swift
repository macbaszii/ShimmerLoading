//
//  ViewController.swift
//  ShimmerView
//
//  Created by Kiattisak Anoochitarom on 7/5/2559 BE.
//  Copyright © 2559 Kiattisak Anoochitarom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    private var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        viewModel.loadProfiles {
            self.tableView.reloadData()
        }
    }
}

private let CellDefaultHeight: CGFloat = 80.0
private let PlaceholderCellIdentifier = "PlaceholderCell"
private let ProfileCellIdentifier = "ProfileCell"

// MARK: - UITableView Protocol Conformance
extension ViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.shouldShowPlaceholder {
            return Int(CGRectGetHeight(tableView.bounds) / CellDefaultHeight)
        } else {
            return viewModel.numberOfRows()
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if viewModel.shouldShowPlaceholder {
            let cell = tableView.dequeueReusableCellWithIdentifier(PlaceholderCellIdentifier, forIndexPath: indexPath) as! PlaceholderCell
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier(ProfileCellIdentifier, forIndexPath: indexPath) as! ProfileCell
            let cellViewModel = CellViewModel(profile: viewModel.profile(at: indexPath))
            cell.configureCell(with: cellViewModel)
            
            return cell
        }
    }
}

