import UIKit

public class QuotesViewController: UIViewController {
    public var didTapButton: ((_ attribute: String) -> Void)?
    lazy var toQuoteButton: UIButton = {
        let button = UIButton()
        button.setTitle("To Quote", for: .normal)
        button.backgroundColor = UIColor.systemOrange
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(toQuoteTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupLayout()
    }

    private func setupUI() {
        view.backgroundColor = .blue
        view.addSubview(toQuoteButton)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            toQuoteButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            toQuoteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toQuoteButton.widthAnchor.constraint(equalToConstant: 150),
            toQuoteButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension QuotesViewController {
    @objc
    private func toQuoteTapped(_ sender: UIButton) {
        didTapButton?("Quote")
    }
}
