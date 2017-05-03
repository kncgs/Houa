//
//  ViewController.swift
//  Houa
//
//  Created by admin on 03/05/2017.
//  Copyright © 2017 houa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test1 = Array(1...10)
        print(test1)
        
        let dro = test1.drop { $0 < 3 }
        
        print(dro)
        
        let test2 = Array(4...10)
//        let pre = test2.prefix(while: { $0 > 3 })
//        print(pre)
        
        let spa = test2.span { $0 > 0} 
    
        print(spa)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension Sequence {

    //     public func drop(while predicate: (Self.Iterator.Element) throws -> Bool) rethrows -> Self.SubSequence

//    func drop(while predicate: (Self.Iterator.Element) throws -> Bool) rethrows -> Self.SubSequence {
//        
//    }
    
    
    
    ///     span (< 3) [1,2,3,4,1,2,3,4] == ([1,2],[3,4,1,2,3,4])
    ///
    ///     span (< 9) [1,2,3] == ([1,2,3],[])
    ///
    ///     span (< 0) [1,2,3] == ([],[1,2,3])
    func span(_ predicate: (Self.Iterator.Element) -> Bool) -> (Self.SubSequence, Self.SubSequence) {
        return (prefix(while: predicate), drop(while: predicate))
    }
}
