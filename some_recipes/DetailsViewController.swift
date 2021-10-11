//
//  DetailsViewController.swift
//  some_recipes
//
//  Created by atanastachev on 11.10.21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var DetailsLabel: UILabel!
    @IBOutlet weak var DetailsTimeToCook: UILabel!
    @IBOutlet weak var DetailsIngredients: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
