import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple // Фиолетовый фон для отличия
        
        title = "Информация"
        
        // Кнопка "Закрыть" слева (чтобы можно было вернуться назад)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(closeTapped))
        
        // Главная кнопка по центру
        let alertButton = UIButton(type: .system)
        alertButton.setTitle("Показать алерт", for: .normal)
        alertButton.setTitleColor(.white, for: .normal)
        alertButton.backgroundColor = .black
        alertButton.layer.cornerRadius = 8
        alertButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        alertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(alertButton)
        
        NSLayoutConstraint.activate([
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            alertButton.widthAnchor.constraint(equalToConstant: 200),
            alertButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func closeTapped() {
        dismiss(animated: true) // Закрываем модальное окно
    }
    
    @objc private func showAlert() {
        // Создаём алерт
        let alert = UIAlertController(
            title: "Внимание!",
            message: "Это тестовое сообщение из InfoViewController.",
            preferredStyle: .alert
        )
        
        // Действие 1: ОК
        let okAction = UIAlertAction(title: "ОК", style: .default) { _ in
            print("Пользователь нажал ОК")
        }
        
        // Действие 2: Отмена
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) { _ in
            print("Пользователь нажал Отмена")
        }
        
        // Добавляем действия в алерт
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        // Показываем алерт
        present(alert, animated: true)
    }
}
