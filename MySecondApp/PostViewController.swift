import UIKit

class PostViewController: UIViewController {
    
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        title = post?.title ?? "Пост"
        
        // Создаем кнопку с иконкой "i" из круга
        let infoImage = UIImage(systemName: "info.circle")
        let infoButton = UIBarButtonItem(image: infoImage, style: .plain, target: self, action: #selector(openInfo))
        
        navigationItem.rightBarButtonItem = infoButton
    }
    
    @objc private func openInfo() {
        let infoVC = InfoViewController()
        let navInfoVC = UINavigationController(rootViewController: infoVC)
        present(navInfoVC, animated: true)
    }
}
