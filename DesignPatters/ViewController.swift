//
//  ViewController.swift
//  DesignPatters
//
//  Created by Josias Piña on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // testFactoryMethod()
        // testAbstractFactory()
        // testBuilder()
        // testProtorype()
        // testSinglenton()
        // testChainOfResponsability()
        // testCommand()
        // testIterator()
        // testMediator()
        // testMemento()
        // testObserver()
        // testState()
        // testInterpreter()
        // testStrategy()
        // testTemplateMethod()
        // testVisitor()
        // testAdapter()
        // testBridge()
        // testComposite()
        // testDecorator()
        // testFacade()
        testFlyweight()
    }

    let enemyTypes = ["Private", "Detective"]
    let weapons = ["Fusil", "Revolver", "Pistola", "9mm"]

    func getRandomEnemyType() -> String {
        let number = Int.random(in: 0 ..< enemyTypes.count)
        return enemyTypes[number]
    }

    func getRandomWeaponType() -> String {
        let number = Int.random(in: 0 ..< weapons.count)
        return weapons[number]
    }

    func testFlyweight() {
        let enemyFactory = EnemyFactory()
        for _ in 0 ... 10 {
            let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
            enemy.setWeapon(weapon: getRandomWeaponType())
            enemy.lifePoints()
        }
    }

    func testFacade() {
        let facade = CreditMarketFacade()
        facade.showCreditGold()
        facade.showCreditSilver()
        facade.showCreditBlack()
    }

    func testDecorator() {
        let blackInternationalPayment = InternationalPaymentDecorator(
            decorated: BlackCreditComponent()
        )
        blackInternationalPayment.showCredit()

        let goldSecurePayment = SecureDecorator(decorated:
            GoldCreditComponent()
        )
        goldSecurePayment.showCredit()
    }

    func testComposite() {
        let savings = SavingAccount()
        let current = CurrentAccount()
        var composite = AccountComposite()

        composite.addAccount(account: current)
        composite.addAccount(account: savings)

        composite.showAccountName()
    }

    func testBridge() {
        var classic = ClassicCreditCardB(creditCard: InsecureCreditCard())

        classic.makePayment()

        classic = ClassicCreditCardB(creditCard: SecureCreditCard())

        classic.makePayment()
    }

    func testAdapter() {
        let adaptee = OperationAdapter(numA: 3, numB: 4)

        if adaptee.sum() == 7 {
            print("Ok int")
        }

        let target = OperAdapter(adapter: adaptee)
        if target.getSum == "7" {
            print("Ok with Sting")
        }

        print(target.getSum)
    }

    func testVisitor() {
        let offer = GasOffer()
        offer.accept(visitor: BlackCreditCardVisitor())
    }

    func testTemplateMethod() {
        let paymentMethodVisa = Visa()
        paymentMethodVisa.makePayment()

        let paymentPaypal = Paypal()
        paymentPaypal.makePayment()
    }

    func testStrategy() {
        let context = Context(strategyTextFormatter: CapitalizeStrategyTextFormatter())
        context.publishText(text: "Esto sera escrito en mayusculas")

        let context2 = Context(strategyTextFormatter: LowerStrategyTextFormatter())
        context2.publishText(text: "Esto Sera Escrito en Minusculas")
    }

    func testInterpreter() {
        let cero = TerminalExpression(text: "0")
        let uno = TerminalExpression(text: "1")

        let containsOneOrCero = OrExpression(expression1: cero, expression2: uno)

        print(containsOneOrCero.interpret(context: "cero"))
        print(containsOneOrCero.interpret(context: "0"))
        print(containsOneOrCero.interpret(context: "1"))
    }

    func testState() {
        let context = MobileAlertStateContext()
        context.alert()
        context.alert()
        sleep(2)
        context.setState(state: Vibration())
        context.alert()
        context.alert()
        sleep(2)
        sleep(2)
        context.setState(state: Silent())
        context.alert()
        context.alert()
    }

    func testObserver() {
        let car = Car()
        let pedestrian = Pedestrian()
        var trafficLight = TraficLight(status: "CAR_GREEN")
        let messagePublisher = MessagePublisher()

        messagePublisher.attach(obs: car)
        messagePublisher.attach(obs: pedestrian)

        messagePublisher.notifyUpdate(trafficLight: trafficLight)

        sleep(2)
        trafficLight.status = "CAR_RED"
        messagePublisher.notifyUpdate(trafficLight: trafficLight)
    }

    func testMemento() {
        let careTaker = CareTaker()
        var article = ArticleOriginator(id: 1, title: "Memento", text: "Pelicua es ")
        careTaker.addMemento(memento: article.createMemento())

        article.text = "Memento es una pelicula de Nolah"
        print(article.text)

        careTaker.addMemento(memento: article.createMemento())

        let memento1: ArticleMementor = careTaker.getMemento(index: 0)
        let memento2: ArticleMementor = careTaker.getMemento(index: 1)

        article.restore(memento: memento1)
        print(article.text)
        article.restore(memento: memento2)
        print(article.text)
    }

    func testMediator() {
        let mediator = ConcreteMediator()
        let concreteColleage1 = ConcreteColleage1(mediator: mediator)
        let concreteColleage2 = ConcreteColleage2(mediator: mediator)

        mediator.setColleage1(colleage1: concreteColleage1)
        mediator.setColleage2(colleage2: concreteColleage2)

        concreteColleage1.send(message: "Hola Como estas, usuario 1")
        concreteColleage2.send(message: "Hola usuario1, yo estoy bien")
    }

    func testIterator() {
        let cards = CreditCardsCollection()
        cards.append(CreditCard(type: "Gold"))
        cards.append(CreditCard(type: "Black"))
        cards.append(CreditCard(type: "Silver"))

        for card in cards {
            print(card.type)
        }
    }

    func testCommand() {
        let creditCard = CreditCardReceiver()
        let invoker = CreditCardInvoker()
        invoker.setCommand(command: CreditCardActivateCommand(creditCardReceiver: creditCard))
        invoker.run()
    }

    func testChainOfResponsability() {
        let bank = BankHandler()
        bank.creditCardRequest(totalLoan: 3000000)
    }

    func testSinglenton() {
        let instance1 = CardSinglenton.shared
        let instance2 = CardSinglenton.shared

        if instance2 === instance1 {
            print("Ambas instancias son iguales")
        }
    }

    func testAbstractFactory() {
        PaymentMethodClient.codigoCliente(factory: MonthlyGoogleFactory())
    }

    func testFactoryMethod() {
        var payment: Payment
        payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
        payment.doPayment()
    }

    func testBuilder() {
        var card = Card.CardBuilder()
            .cardType(cardType: "VISA")
            .number(number: "1111 2222 3333 4444")
            .expires(expires: 2024)
            .build()

        card.showCard()
    }

    func testProtorype() {
        let original = VisaCardConcreteProtorype(cardNumber: 1111, cardType: "Credit")
        guard let copy = original.copy() as? VisaCardConcreteProtorype else {
            return
        }
        print(original.cardName)
        print(original.cardNumber)
        print(copy.cardName)
        print(copy.cardNumber)
    }
}
