//
//  RecVCDetail.swift
//  IntheGarden
//
//  Created by Dominike Bowman on 9/5/23.
//

import UIKit

class RecVCDetail: UIViewController {
    
    var recipe: Veggies!
    var image = ""
    var name = ""
    
    
    
    @IBOutlet weak var recImage: UIImageView!
    @IBOutlet weak var recInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        recImage.image = UIImage(named: recipe.image)
        recInfo.text = recipe.description
    }
  
}
