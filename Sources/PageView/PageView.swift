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
    
    public init(_ currentPage: Binding<Int>, wrapAround: Bool = false, @HostingControllerBuilder content: () -> [UIViewController]) {
        self.currentPage = currentPage
        self.wrapAround = wrapAround
        self.viewControllers = content()
    }
    
    public var body: some View {
        PageViewController(currentPage: currentPage, controllers: viewControllers.enumerated().map { $1.tag = $0; return $1 }, wrapAround: wrapAround)
    }
}
