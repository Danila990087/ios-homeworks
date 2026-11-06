//
//  SceneDelegate.swift
//  Navigation
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Создаём реальные контроллеры
        let feedVC = FeedViewController()
        let profileVC = ProfileViewController()
        
        // Оборачиваем в навигационные контроллеры
        let feedNav = UINavigationController(rootViewController: feedVC)
        let profileNav = UINavigationController(rootViewController: profileVC)
        
        // Настраиваем таб-бар айтемы
        feedNav.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "list.bullet"), tag: 0)
        profileNav.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 1)
        
        // Создаём таб-бар контроллер
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [feedNav, profileNav]
        
        // Создаём окно и назначаем корневой контроллер
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = tabBarController
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}
    func sceneDidBecomeActive(_ scene: UIScene) {}
    func sceneWillResignActive(_ scene: UIScene) {}
    func sceneWillEnterForeground(_ scene: UIScene) {}
    func sceneDidEnterBackground(_ scene: UIScene) {}
}
