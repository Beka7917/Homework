//
//  SecondViewController.swift
//  Homework
//
//  Created by Бектур Кадыркулов on 19/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    var catalogDetail: Product?
    
    var detailImage = "empty"
    var aboutovar = "empty"
    var countLabel = "empty"
    var detail = "empty"
    var type = "empty"
    var color = "empty"
    var material = "empty"
    var dimensions = "empty"
    var weight = "empty"
    
    @IBOutlet weak var DetailImage: UIImageView!
    
    
    @IBOutlet weak var aboutTovar: UILabel!
    
    
    @IBOutlet weak var CountLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    
    @IBOutlet weak var typeLabel: UILabel!
    
    
    @IBOutlet weak var colorLabel: UILabel!
    
    
    @IBOutlet weak var materialLabel: UILabel!
    
    
    @IBOutlet weak var dimensionsLabel: UILabel!
   
    
    
    @IBOutlet weak var weightLabel: UILabel!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        aboutTovar.text = aboutovar
        CountLabel.text = countLabel
        detailLabel.text = detail
        typeLabel.text = type
        colorLabel.text = color
        materialLabel.text = material
        dimensionsLabel.text = dimensions
        weightLabel.text = weight

    }




}
