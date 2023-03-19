//
//  ViewController.swift
//  Homework
//
//  Created by Бектур Кадыркулов on 18/3/23.
//

import UIKit

class ViewController: UIViewController {

    private var  catalogList: [Product] = []
    
    
    @IBOutlet weak var catalogTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        catalogTableView.dataSource = self
        catalogTableView.delegate = self
        initData()
    }
    private func initData(){
        catalogList  = [
            Product(id: 0, type: "Furniture", count: 785, image: "sova",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            color: "Office, Living Room",
                                            material: "yellow" , dimensions: "Textile, Velvet, Cotton",
                                            weight: "25.6 * 31.5 * 37.4 inches",
                                            star: 5, name: "sova", price: "230 $") ),
            Product(id: 0, type: "KitchenWare", count: 7251, image: "table",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            color: "Office, Living Room",
                                            material: "yellow" , dimensions: "Textile, Velvet, Cotton",
                                            weight: "25.6 * 31.5 * 37.4 inches",
                                            star: 5, name: "reading table", price: "230 $") ),
            Product(id: 0, type: "Reading Table", count: 7251, image: "kitchen",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            color: "Office, Living Room",
                                            material: "yellow" , dimensions: "Textile, Velvet, Cotton",
                                            weight: "25.6 * 31.5 * 37.4 inches",
                                            star: 5, name: "kitchen", price: "230 $") ),
            Product(id: 0, type: "Kitchen", count: 7251, image: "sova",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            color: "Office, Living Room",
                                            material: "yellow", dimensions: "Textile, Velvet, Cotton",
                                            weight: "25.6 * 31.5 * 37.4 inches",
                                            star: 5, name: "cool sova", price: "230 $") ),
            Product(id: 0, type: "Kitchen", count: 7251, image: "kitchen",
                    details: ProductDetails(roomType: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            color: "Office, Living Room",
                                            material: "yellow" , dimensions: "Textile, Velvet, Cotton",
                                            weight: "25.6 * 31.5 * 37.4 inches",
                                            star: 5, name: "cool kitchen", price: "230 $") )
        ]


    }

}

extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        catalogList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! CatalogTableViewCell
        cell.initCellUI(image: catalogList[indexPath.row].image,
                        title: catalogList[indexPath.row].details.name,
                        count: String(catalogList [indexPath.row].count))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.catalogDetail = catalogList[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

struct Product {
    let id: Int
    let type: String
    let count: Int
    let image: String
    let details: ProductDetails
}
struct ProductDetails {
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let name: String
    let price: String
}
