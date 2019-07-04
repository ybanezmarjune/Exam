//
//  MainViewController.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel = MainViewModel()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
        prepareTableView()
        
        /// bind data to tableview
        bindDisplay()
    }
    fileprivate func prepareTableView() {
        tableView.register(ListItemCell.nibFile,
                           forCellReuseIdentifier: ListItemCell.identifier)
    }
}

// MARK: - Display
extension MainViewController {
    /*
     on a regular tableview display we used UITableViewDatasource and UITableViewDelegate,
     but on my part i will used rxswift to bind the data on my tableview
    */
    fileprivate func bindDisplay() {
        /// request for api
        rx.sentMessage(#selector(viewWillAppear(_:)))
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { _ in
                self.viewModel.request()
            }).disposed(by: viewModel.dispose)
        
        /// tableDatasource
        viewModel.data
            .observeOn(MainScheduler.instance)
            .asObservable()
            .bind(to: tableView.rx.items(cellIdentifier: ListItemCell.identifier,
                                         cellType: ListItemCell.self)) { (row, data, cell) in
                                            cell.setDisplay(with: data)
            }.disposed(by: viewModel.dispose)
        
        /// tablviewSelection
        tableView.rx.itemSelected
            .map { $0.row }
            .subscribe(onNext: { [weak self] row in
                let item = self?.viewModel.data.value[row]
                self?.gotoDetails(with: item)
            }).disposed(by: viewModel.dispose)
    }
}

// MARK: - Next View controller
extension MainViewController {
    func gotoDetails(with item: ModelResult?) {
        // track
        Default().add(.lastViewed(id: item?.trackId ?? ""))
        // next controller
        let detailsVC = DetailsViewController()
        detailsVC.viewModel.data = item
        self.navigationController?
            .pushViewController(detailsVC,
                                animated: true)
    }
}
