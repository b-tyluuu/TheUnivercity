//
//  ViewController.swift
//  TheUnivercity
//
//  Created by Kutman Kakiev on 25/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    var univercityName = ""
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var allListButton: UIButton!
    
    //Changes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //LifeCycle
        print("viewDidLoad called")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWilDisappear caled")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
    }
    
    
    
    
    @IBAction func secrhButton(_ sender: Any) {
        univercityName = textField.text!
        performSegue(withIdentifier: "toSearchVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSearchVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.chosenLandmarkName = univercityName
        }
    }
    
}
