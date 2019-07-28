//
//  PageViewController.swift
//  PageView
//
//  Created by Josef Zoller on 28.07.19.
//  Copyright © 2019 Josef Zoller. All rights reserved.
//

import SwiftUI
import UIKit

internal struct PageViewController: UIViewControllerRepresentable {
    @Binding var currentPage: Int
    
    let controllers: [UIViewController]
    let wrapAround: Bool
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        let direction: UIPageViewController.NavigationDirection
        if
            let visibleViewController = pageViewController.viewControllers?.first,
            let tag = visibleViewController.tag,
            let index = controllers.firstIndex(where: { $0.tag == tag }) {
            if currentPage == index {
                return
            }
            
            let count = controllers.count
            
            if wrapAround && currentPage == 0 && index > count / 2 {
                direction = .forward
            } else if wrapAround && currentPage == count - 1 && index < count / 2 {
                direction = .reverse
            } else if currentPage > index {
                direction = .forward
            } else {
                direction = .reverse
            }
        } else {
            direction = .forward
        }
        
        pageViewController.setViewControllers([controllers[currentPage]], direction: direction, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        var parent: PageViewController

        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard
                let tag = viewController.tag,
                let index = parent.controllers.firstIndex(where: { $0.tag == tag }) else {
                return nil
            }
            if index == 0 {
                return nil
            }
            return parent.controllers[index - 1]
        }

        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard
                let tag = viewController.tag,
                let index = parent.controllers.firstIndex(where: { $0.tag == tag }) else {
                return nil
            }
            if index + 1 == parent.controllers.count {
                return nil
            }
            return parent.controllers[index + 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
            if completed,
                let visibleViewController = pageViewController.viewControllers?.first,
                let tag = visibleViewController.tag,
                let index = parent.controllers.firstIndex(where: { $0.tag == tag }) {
                parent.currentPage = index
            }
        }
    }
}
