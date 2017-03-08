//
//  UIColorExtensions.swift
//  CodeNameGenerator
//
//  Created by Jason van Lint on 15/09/2016.
//  Copyright © 2016 Dead Frog Studios. All rights reserved.
//
import UIKit

extension UIColor {
    
    //MARK: - Initialisers
    
    /// Convenience initialiser.
    ///
    /// - parameter r: red value
    /// - parameter g: green value
    /// - parameter b: blue value
    ///
    /// - returns: A UIColor object.
    convenience init(r: Int, g:Int , b:Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    }

    //MARK: - Added Flat UI Colors
    class func turquoiseColor()->UIColor {
        return UIColor(r: 26, g: 188, b: 156)
    }

    class func greenSeaColor()->UIColor {
        return UIColor(r: 22, g: 160, b: 133)
    }

    class func c()->UIColor {
        return UIColor(r: 46, g: 204, b: 113)
    }

    class func nephritisColor()->UIColor {
        return UIColor(r: 39, g: 174, b: 96)
    }

    class func peterRiverColor()->UIColor {
        return UIColor(r: 52, g: 152, b: 219)
    }

    class func belizeHoleColor()->UIColor {
        return UIColor(r: 41, g: 128, b: 185)
    }

    class func amethystColor()->UIColor {
        return UIColor(r:155, g:89, b:182)
    }

    class func wisteriaColor()->UIColor {
        return UIColor(r:142, g:68, b:173)
    }

    class func wetAsphaltColor()->UIColor {
        return UIColor(r:52, g:73, b:94)
    }

    class func midnightBlueColor()->UIColor {
        return UIColor(r:44, g:62, b:80)
    }

    class func sunflowerColor()->UIColor {
        return UIColor(r:241, g:196, b:15)
    }

    class func carrotColor()->UIColor {
        return UIColor(r:230, g:126, b:34)
    }

    class func pumpkinColor()->UIColor {
        return UIColor(r:211, g:84, b:0)
    }

    class func alizarinColor()->UIColor {
        return UIColor(r:231, g:76, b:60)
    }

    class func pomergranateColor()->UIColor {
        return UIColor(r:192, g:57, b:43)
    }

    class func cloudsColor()->UIColor {
        return UIColor(r:236, g:240, b:241)
    }

    class func silverColor()->UIColor {
        return UIColor(r:189, g:195, b:199)
    }

    class func concreteColor()->UIColor {
        return UIColor(r:149, g:165, b:166)
    }

    class func asbestosColor()->UIColor {
        return UIColor(r:127, g:140, b:141)
    }
    
    class func pantone1235()->UIColor {       
        return UIColor(r:127, g:140, b:141)    
    }
    
    class func pantone1505()->UIColor {               return UIColor(r:127, g:140, b:141)        }
    
    
    //MARK: - Class Methods
    
    // ColorTuple declaration for randomFlatColor function
    typealias ColorTuple = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    
    /// Returns a random Flat UI color
    ///
    /// - returns: A random UIColor object that is a member of the Flat UI color family.
    class func randomFlatColor() -> UIColor {
        
        struct RandomColors {
            static let colors: Array<ColorTuple> = [
                (red: 26/255, green: 188/255, blue: 156/255, alpha: 1.0),
                (red: 22/255, green: 160/255, blue: 133/255, alpha: 1.0),
                (red: 39/255, green: 174/255, blue: 96/255, alpha: 1.0),
                (red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0),
                (red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0),
                (red: 155/255, green: 89/255, blue: 182/255, alpha: 1.0),
                (red: 142/255, green: 68/255, blue: 173/255, alpha: 1.0),
                (red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0),
                (red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0),
                (red: 241/255, green: 196/255, blue: 15/255, alpha: 1.0),
                (red: 230/255, green: 126/255, blue: 34/255, alpha: 1.0),
                (red: 211/255, green: 84/255, blue: 0, alpha: 1.0),
                (red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0),
                (red: 192/255, green: 57/255, blue: 43/255, alpha: 1.0),
                (red: 189/255, green: 195/255, blue: 199/255, alpha: 1.0),
                (red: 149/255, green: 165/255, blue: 166/255, alpha: 1.0),
                (red: 127/255, green: 140/255, blue: 141/255, alpha: 1.0)
            ]
        }
        
        let colorCount = UInt32(RandomColors.colors.count)
        let randomIndex = arc4random_uniform(colorCount)
        let color = RandomColors.colors[Int(randomIndex)]
        
        return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
    }
    
    //Move this as an extension to UIColor
    
    class func contrastColor(color: UIColor) -> UIColor {
        var r = CGFloat(0)
        var g = CGFloat(0)
        var b = CGFloat(0)
        var a = CGFloat(0)
        
        var returnColor: UIColor = UIColor .white
        
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        // Counting the perceptive luminance - human eye favors green color...
        let luminance = 1 - ((0.299 * r) + (0.587 * g) + (0.114 * b))
        
        if luminance < 0.5 {
            returnColor = UIColor .black // bright colors - black font
        } else {
            returnColor = UIColor .white // dark colors - white font
        }
        
        return returnColor
    }

}
