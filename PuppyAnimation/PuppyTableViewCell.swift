import UIKit

class PuppyTableViewCell: UITableViewCell {
    @IBOutlet weak var puppyImageView: UIImageView!
    @IBOutlet weak var puppyLabel: UILabel!
    
    var puppy: Puppy! {
        didSet {
            puppyImageView.image = UIImage(named: puppy.imageName)
            puppyLabel.text = puppy.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
