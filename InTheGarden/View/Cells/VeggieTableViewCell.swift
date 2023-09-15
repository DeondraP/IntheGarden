//
//  VeggieTableViewCell.swift
//  IntheGarden
//
//  Created by Deondra Patrick on 8/22/23.
//

import UIKit

class VeggieTableViewCell: UITableViewCell {

    @IBOutlet weak var veggieImg: UIImageView!
    @IBOutlet weak var veggieLbl: UILabel!
    
    func update(name: String, image: String) {
        veggieImg.image = UIImage(named: image)
        veggieLbl.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
