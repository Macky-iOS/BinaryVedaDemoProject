

import UIKit

class ProfileHeaderTVC: UITableViewCell {

    @IBOutlet weak var switchDasBoard: UISwitch!
    weak var delegate: SIgnDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
        
    @IBAction func btnMenu(_ sender: UIButton) {
        delegate?.goToNextScreen()
    }
}
