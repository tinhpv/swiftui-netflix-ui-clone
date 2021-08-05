//
//  String+Ext.swift
//  Netflix Rebuild
//
//  Created by TinhPV on 8/5/21.
//

import UIKit

extension String {
    func widthOfString(font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
