//
//  DetailViewController.swift
//  IntheGarden
//
//  Created by Dominike Bowman on 8/26/23.
//

import UIKit

class DetailViewController: UIViewController {

    var veggie: Veggies!
    var image = ""
    var name = ""
    
    
   
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        imageView.image = UIImage(named: veggie.image)
        textView.text = veggie.description
    }
    
}
    

    


