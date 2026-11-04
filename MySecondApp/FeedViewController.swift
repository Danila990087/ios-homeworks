import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Лента"
        
        // Создаём кнопку
        let postButton = UIButton(type: .system)
        postButton.setTitle("Открыть пост", for: .normal)
        postButton.setTitleColor(.white, for: .normal)
        postButton.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        postButton.backgroundColor = .systemRed
        postButton.layer.cornerRadius = 12
        postButton.addTarget(self, action: #selector(openPostTapped), for: .touchUpInside)
        
        // Добавляем на экран
        postButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(postButton)
        
        // Constraints
        NSLayoutConstraint.activate([
            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            postButton.widthAnchor.constraint(equalToConstant: 200),
            postButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        // Отладка: проверяем, что кнопка добавлена
        print("Кнопка добавлена на экран")
    }
    
    @objc private func openPostTapped() {
        print("Кнопка нажата!")
        let post = Post(title: "Мой первый пост")
        let postVC = PostViewController()
        postVC.post = post
        navigationController?.pushViewController(postVC, animated: true)
    }
}
