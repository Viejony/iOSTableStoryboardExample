//
//  ColorModel.swift
//  IOSTableStoryboardSample
//
//  Created by Jhonyfer Angarita on 23/06/22.
//

import Foundation

struct ColorModel{
    var colorName: String
    var red: Int
    var green: Int
    var blue: Int
    var hexString: String{
        var hexString = "#"
        hexString += "FFFFFF"
        return hexString
    }
    
    init(colorName: String, red: Int, green: Int, blue: Int){
        self.colorName = colorName
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    func getRedFloat() -> Float{
        return Float(self.red / 255)
    }
    
    func getGreenFloat() -> Float{
        return Float(self.green / 255)
    }
    
    func getBlueFloat() -> Float{
        return Float(self.blue / 255)
    }
}
