//___FILEHEADER___

import UIKit
import RxSwift
import ReactorKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, Storyboarded, StoryboardView {
    
    var coordinator: ___VARIABLE_coordinatorType:identifier___Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        subscribe()
    }

    func bind(reactor: ___VARIABLE_productName:identifier___Reactor) {
        
        cex_observeLoading(reactor.state.map { $0.loading })
    }

    private func subscribe() {
    }
    
    private func configureUI() {
        
    }
    
    var disposeBag = DisposeBag()
}
