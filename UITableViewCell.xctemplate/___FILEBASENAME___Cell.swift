//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        cellIsAwaken = true
        applyModel(model)
    }

    var model: <#model#> {
        didSet {
            applyModel(model)
        }
    }

    private func applyModel(_ model: <#model#>?) {

        guard let model = model, cellIsAwaken == true else {
            return
        }

    }

    private var cellIsAwaken = false
}

