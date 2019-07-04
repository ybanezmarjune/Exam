//
//  MainViewModel.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import Foundation
import NetworkManager
import RxSwift
import RxCocoa
import CoreData

class MainViewModel: ViewModel {
    var networkManager  = NetworkManager<AppleItemMainModel>()
    var data            = BehaviorRelay<[ModelResult]>(value: ModelResult.getData())
    let dispose         = DisposeBag()
    func request() {
        // check data if not empty
        guard data.value.isEmpty else { return }
        
        // call api if data is not empty
        networkManager.request()
            .subscribe(onNext: { [weak self] model in
                guard let results = model.results else { return }
                var tempModel = [ModelResult]()
                for item in results {
                    let model = ModelResult(fromDictionary: item.toJSON(),
                                            context: NSManagedObjectContext.context()!)
                    tempModel.append(model)
                }
                self?.data.accept(tempModel)
            }).disposed(by: dispose)
    }
}
