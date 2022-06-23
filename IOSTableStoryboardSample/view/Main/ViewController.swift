//
//  ViewController.swift
//  IOSTableStoryboardSample
//
//  Created by Jhonyfer Angarita on 23/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    let colorsArray: [ColorModel] = [
        ColorModel(colorName: "Red", red: 255, green: 0, blue: 0),
        ColorModel(colorName: "Green", red: 0, green: 255, blue: 0),
        ColorModel(colorName: "Blue", red: 0, green: 0, blue: 255)
    ]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        tableView.register(
            UINib(
                nibName: "ColorTableViewCell",
                bundle: nil),
            forCellReuseIdentifier: "ColorTableViewCell")
        
        tableView.delegate = self
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("The cell #\(indexPath.row) was selected")
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell", for: indexPath)
        if let colorCell = cell as? ColorTableViewCell{
            colorCell.setupCell(color: colorsArray[indexPath.row])
        }
        
        return cell
    }
}
