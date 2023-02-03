//
//  DetailsVC.swift
//  TheUnivercity
//
//  Created by Kutman Kakiev on 29/1/23.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkText: UITextView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    var selectedLandmarkText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        landmarkText.text = selectedLandmarkText
    }
    


}
