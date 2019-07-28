//
//  PageView.swift
//  PageView
//
//  Created by Josef Zoller on 28.07.19.
//  Copyright © 2019 Josef Zoller. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public struct PageView: View {
    public var currentPage: Binding<Int>

    public let wrapAround: Bool
    
    private let viewControllers: [UIViewController]
    
    public init<C0>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> C0) where C0: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let view = content()
        
        self.viewControllers = [
            UIHostingController(rootView: view)
        ]
    }
    
    public init<C0, C1>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1)>) where C0: View, C1: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1)
        ]
    }
    
    public init<C0, C1, C2>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2)>) where C0: View, C1: View, C2: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2)
        ]
    }
    
    public init<C0, C1, C2, C3>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3)>) where C0: View, C1: View, C2: View, C3: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3)
        ]
    }
    
    public init<C0, C1, C2, C3, C4>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4)>) where C0: View, C1: View, C2: View, C3: View, C4: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4)
        ]
    }
    
    public init<C0, C1, C2, C3, C4, C5>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4, C5)>) where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4),
            UIHostingController(rootView: views.5)
        ]
    }
    
    public init<C0, C1, C2, C3, C4, C5, C6>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4, C5, C6)>) where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4),
            UIHostingController(rootView: views.5),
            UIHostingController(rootView: views.6)
        ]
    }
    
    public init<C0, C1, C2, C3, C4, C5, C6, C7>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)>) where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4),
            UIHostingController(rootView: views.5),
            UIHostingController(rootView: views.6),
            UIHostingController(rootView: views.7)
        ]
    }
    
    public init<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)>) where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4),
            UIHostingController(rootView: views.5),
            UIHostingController(rootView: views.6),
            UIHostingController(rootView: views.7),
            UIHostingController(rootView: views.8)
        ]
    }
    
    public init<C0, C1, C2, C3, C4, C5, C6, C7, C8, C9>(_ currentPage: Binding<Int>, wrapAround: Bool = false, content: () -> TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)>) where C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        
        let views = content().value
        
        self.viewControllers = [
            UIHostingController(rootView: views.0),
            UIHostingController(rootView: views.1),
            UIHostingController(rootView: views.2),
            UIHostingController(rootView: views.3),
            UIHostingController(rootView: views.4),
            UIHostingController(rootView: views.5),
            UIHostingController(rootView: views.6),
            UIHostingController(rootView: views.7),
            UIHostingController(rootView: views.8),
            UIHostingController(rootView: views.9)
        ]
    }
    
    public var body: some View {
        PageViewController(currentPage: currentPage, controllers: viewControllers.enumerated().map { $1.tag = $0; return $1 }, wrapAround: wrapAround)
    }
}
