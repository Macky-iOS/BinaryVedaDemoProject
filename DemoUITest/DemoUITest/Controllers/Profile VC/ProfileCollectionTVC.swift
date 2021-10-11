
import UIKit

class ProfileCollectionTVC: UITableViewCell {

    @IBOutlet weak var clcView: UICollectionView!
    @IBOutlet weak var constHeight: NSLayoutConstraint!
    
    private var viewWidth: CGFloat = 30
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(width: CGFloat){
        clcView.register(cells: ImagesCVC.self)
        viewWidth = width
        constHeight.constant = 175*4
        clcView.reloadData()
    }
    
}

extension ProfileCollectionTVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ImagesCVC.dequeReusably(for: collectionView, at: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameWidth = (viewWidth - 32)/2 
        return CGSize(width: frameWidth, height: CGFloat(175))
    }
    
}
    
