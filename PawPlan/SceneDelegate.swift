//
//  SceneDelegate.swift
//  PawPlan
//
//  Created by Macy Donahoe (student LM) on 3/11/21.
//  Copyright © 2021 Macy Donahoe (student LM). All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func createDates() -> [Day] {
          var days = [Day]()
          /* for a in 1...31{
               print(Day(year: "2021", month: "January", day1: "\(a)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           for b in 1...30{
                  print(Day(year: "2021", month: "January", day1: "\(b)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for c in 1...31{
              print(Day(year: "2021", month: "January", day1: "\(c)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for d in 1...30{
                   print(Day(year: "2021", month: "January", day1: "\(d)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))            }
               for e in 1...31{
                 print(Day(year: "2021", month: "January", day1: "\(e)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for f in 1...30{
                   print(Day(year: "2021", month: "January", day1: "\(f)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for g in 1...31{
                  print(Day(year: "2021", month: "January", day1: "\(g)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for h in 1...30{
                   print(Day(year: "2021", month: "January", day1: "\(h)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for j in 1...30{
                   print(Day(year: "2021", month: "January", day1: "\(j)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for k in 1...31{
                   print(Day(year: "2021", month: "January", day1: "\(k)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for l in 1...30{
                   print(Day(year: "2021", month: "January", day1: "\(l)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
               for m in 1...31{
                   print(Day(year: "2021", month: "January", day1: "\(m)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
               }
              //days.append(Day(year: "2021", month: "January", day1: "\(a)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }*/
           for b in 1...30{
               days.append(Day(year: "2021", month: "February", day1: "\(b)", dayOfWeek: "", events: []))
           }
           for c in 1...31{
               days.append(Day(year: "2021", month: "March", day1: "\(c)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
        print(days.count)
        /*
           for d in 1...30{
               self.days.append(Day(year: "2021", month: "April", day1: "\(d)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for e in 1...31{
               self.days.append(Day(year: "2021", month: "May", day1: "\(e)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for f in 1...30{
               self.days.append(Day(year: "2021", month: "June", day1: "\(f)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for g in 1...31{
               self.days.append(Day(year: "2021", month: "July", day1: "\(g)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for h in 1...30{
               self.days.append(Day(year: "2021", month: "August", day1: "\(h)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for j in 1...30{
               self.days.append(Day(year: "2021", month: "September", day1: "\(j)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for k in 1...31{
               self.days.append(Day(year: "2021", month: "October", day1: "\(k)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for l in 1...30{
               self.days.append(Day(year: "2021", month: "November", day1: "\(l)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }
           for m in 1...31{
               self.days.append(Day(year: "2021", month: "December", day1: "\(m)", dayOfWeek: "", events: [Event(title: "", type: "", description: "")]))
           }*/
          return days
       }


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView(days: createDates())

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

