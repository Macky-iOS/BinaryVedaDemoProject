

import UIKit

protocol SIgnDelegate: class {
    func goToNextScreen()
}

class LandingPageHeaderTVC: UITableViewCell {

    weak var delegate: SIgnDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func btnRegister(_ sender: UIButton) {
        delegate?.goToNextScreen()
    }
}
