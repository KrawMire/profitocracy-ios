//
//  HomeViewPreview.swift
//  Profitocracy
//
//  Created by Anton Gavrilov on 18.06.23.
//

import SwiftUI

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(
            viewModel: HomeViewModel(
                appSettings: AppSettings(
                    categories: [SpendCategory](),
                    anchorDays: [10, 25],
                    theme: .system,
                    mainCurrency: Currency(name: "US Dollar", code: "USD", symbol: "$"),
                    isSetup: true
                ),
                currentAnchorDate: AnchorDate(startDate: Date(), balance: 1000),
                transactionsState: TransactionsState(transactions: [
                    Transaction(
                        type: .expense,
                        amount: 10,
                        spendType: .main,
                        currency: Currency(name: "US Dollar", code: "USD", symbol: "$"),
                        description: "",
                        time: Time(hours: 10, minutes: 50, seconds: 11),
                        date: Date()
                    )
                ]),
                currencyRatesState: CurrencyRatesState(currencyRates: [])
            )
        )
    }
}
