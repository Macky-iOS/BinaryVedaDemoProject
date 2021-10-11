

import UIKit

class LandingPageVC: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.register(cells: LandingPageTVC.self, LandingPageHeaderTVC.self, LandingPageFooterTVC.self)
    }


}
//MARK:- TableViewDelegate and Datasource
extension LandingPageVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = LandingPageHeaderTVC.dequeReusably(for: tableView, at: indexPath)
            return cell
        case 6:
            let cell = LandingPageFooterTVC.dequeReusably(for: tableView, at: indexPath)
            return cell
        default:
            let cell = LandingPageTVC.dequeReusably(for: tableView, at: indexPath)
            return cell
        }
    }
    
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
  
    
}
