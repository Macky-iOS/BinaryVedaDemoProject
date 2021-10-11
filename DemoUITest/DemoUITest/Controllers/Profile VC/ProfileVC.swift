
import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.register(cells: ProfileHeaderTVC.self, ProfileCollectionTVC.self)
    }

}

extension ProfileVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = ProfileHeaderTVC.dequeReusably(for: tableView, at: indexPath)
            cell.delegate = self
            return cell
        }else{
            let cell = ProfileCollectionTVC.dequeReusably(for: tableView, at: indexPath)
            cell.configure(width: self.view.frame.width)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
}

extension ProfileVC: SIgnDelegate{
    func goToNextScreen() {
        self.navigationController?.popViewController(animated: true)
    }
}
