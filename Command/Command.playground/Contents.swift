protocol Command {
    var isComplete: Bool { get set }
    
    func execute()
}

class Account {
    
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
    
}

class Deposit: Command {
    
    var isComplete = false
    private var _account: Account
    private var _amount: Int
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        _account.balance += _amount
        isComplete = true
    }
    
}

class Withdraw: Command {
    
    var isComplete = false
    private var _account: Account
    private var _amount: Int
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        guard _account.balance >= _amount else {
            print("Not enough money")
            return
        }
        
        _account.balance -= _amount
        isComplete = true
    }
    
}

class TransactionManager {
    
    static let shared = TransactionManager()
    
    var pendingTransactions: [Command] {
        get {
            return self._transactions.filter { $0.isComplete == false }
        }
    }
    
    private var _transactions: [Command] = []
    
    private init() {}
    
    func addTransaction(command: Command) {
        self._transactions.append(command)
    }
    
    func processingTransactions() {
        _transactions.filter { $0.isComplete == false }.forEach { $0.execute() }
    }
    
}

let account = Account(accountName: "1", balance: 1000)
let transactionManager = TransactionManager.shared
transactionManager.addTransaction(command: Deposit(account: account, amount: 500))
print(account.balance)
transactionManager.processingTransactions()
print(account.balance)
transactionManager.addTransaction(command: Withdraw(account: account, amount: 200))
print(account.balance)
transactionManager.processingTransactions()
print(account.balance)
