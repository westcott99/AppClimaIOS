//
//  Point.swift
//  Catedra1MapaMapa
//
//  Created by Maury Marin on 10/15/20.
//  Copyright © 2020 Maury Marin. All rights reserved.
//

import Foundation
import MapKit

struct Point {
    var pointAnn: [MKPointAnnotation] = []
    
    init() {
        createPoint()
    }
    
    private mutating func createPoint() {
        var ann = MKPointAnnotation()
        ann.coordinate = CLLocation(latitude: 13.7122766, longitude: -89.1893879).coordinate
        ann.title = "Universidad Don Bosco"
        
        pointAnn.append(ann)
        ann = MKPointAnnotation()
        
    }
}
