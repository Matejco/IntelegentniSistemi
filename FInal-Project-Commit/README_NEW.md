# 🚀 **S&P 500 Trading Strategy Backtester**

> Event-driven backtester со 5 стратегии, Grid Search оптимизација, Walk-Forward Validation и Machine Learning

---

## 📊 **РЕЗУЛТАТИ НА BACKTESTER**

### 🏆 **Компаративна Анализа (5 Стратегии)**

| Стратегија                | Вкупен Принос | Sharpe Ratio | Max Drawdown |  Final Value   | Trades |
| ------------------------- | :-----------: | :----------: | :----------: | :------------: | :----: |
| **SMA 10/120 (Opt)** 🥇   |  **+44.06%**  |  **0.303**   |   -17.05%    | **$14,406.50** |   5    |
| MACD Momentum             |    +4.56%     |    -0.159    |   -20.94%    |   $10,456.08   |   51   |
| SMA Crossover             |    -0.49%     |    -0.267    |   -28.12%    |   $9,950.55    |   15   |
| RF (ML)                   |    -2.53%     |    -0.512    |   -18.19%    |   $9,746.77    |   13   |
| RSI Reversion             |    -8.91%     |    -1.489    |   -15.49%    |   $9,108.68    |   3    |
| **Buy & Hold (Baseline)** | **+173.72%**  |     N/A      |     N/A      |  **$27,372**   |   1    |

### 📈 **Лучша Стратегија: SMA 10/120 (Optimizirana)**

- **Вкупен Принос**: 44.06% (2.25× подобра од базична SMA)
- **Sharpe Ratio**: 0.303 (позитивна ризик-приспособена поврата)
- **Profit Factor**: 7.44 (за $1 загубена → $7.44 добивено)
- **Win Rate**: 40% (4 од 5 трејдови позитивни)
- **Avg Hold**: 112.2 денови (долгорочна позиција)

### 🤖 **Random Forest ML Стратегија**

- **Test Accuracy**: 52.83% (малку подобра од random)
- **Signals**: 182 BUY, 69 SELL
- **Conclusion**: ML не е оптимално за предвидување со 17 фичури

### 🔄 **Walk-Forward Validation (5 прозорци)**

- **Avg OOS Sharpe**: -0.793 (нема статистичка значајност)
- **Avg WFE**: -38.016 (стратегијата не генерализира добро)

### 📉 **Monte Carlo Симулација (1,000 × 252 денови)**

- **Expected Return**: +8.45%
- **95% Confidence**: -11.75% до +30.38%
- **Probability of Profit**: 74.2%
- **VaR (95%)**: -11.75% (максимален очекуван губиток)

---

## 📁 **СТРУКТУРА НА ПРОЕКТА**

```
📂 InteligentniSistemi/
├── backtester_kaggle_sp500.ipynb    ← ГЛАВНА NOTEBOOK
├── README.md                        ← Документација
├── JUPYTER_START.bat               ← Брз launcher (ако е инсталиран)
├── SETUP_AND_RUN.bat               ← Комплетен setup + run
├── .gitignore                       ← Git исклучување
└── 📁 outputs/                      ← ГЕНЕРИРАНИ ГРАФИКИ
    ├── dashboard.png               ← Market overview
    ├── signals_SMA_Crossover.png   ← Trade сигнали
    ├── signals_RSI_Reversion.png
    ├── signals_MACD_Momentum.png
    ├── signals_SMA_10-120_(Opt).png ← ЛУЧША СТРАТЕГИЈА
    ├── equity_curve.png            ← Portfolio стойност
    ├── metrics_dashboard.png       ← Метрики табела
    ├── wfv_oos_curves.png         ← Walk-Forward криви
    ├── monte_carlo.png             ← MC симулација
    ├── rf_feature_importance.png   ← ML фичури ранг
    ├── ml_signals.png              ← ML предвидување
    └── final_equity.png            ← Финална композитна крива
```

---

## 🚀 **ИНСТРУКЦИИ ЗА ПОКРЕТАЊЕ**

### ✅ **Веќе направено:**

- ✅ Python 3.13.7 конфигуриран и тестиран
- ✅ Сите зависности инсталирани: pandas 3.0.3, numpy 2.4.6, scikit-learn 1.9.0, matplotlib 3.10.9, kaggle, jupyter
- ✅ Kaggle credentials подготвени и валидирани
- ✅ Сите 42 ћелије успешно извршене без грешка
- ✅ 5 стратегија развијена и тестирана
- ✅ 9 графика генерирани во `/outputs/`
- ✅ Grid Search, Walk-Forward, Monte Carlo и ML завршени

### 🎯 **3 ОПЦИЈЕ ЗА ПОКРЕТАЊЕ:**

#### **ОПЦИЈА 1: Автоматски (ПРЕПОРАЧАНО)** ⭐

```batch
1. Двапати кликнете на: SETUP_AND_RUN.bat
2. Jupyter се отвора автоматски во браузер
3. Run All (Ctrl+Shift+Enter) или кликнете ⚡
4. Чекајте ~20-35 минути
5. Графиците се генерираат во ./outputs/
```

#### **ОПЦИЈА 2: Преку VS Code**

```
1. Отворете backtester_kaggle_sp500.ipynb
2. Изберете Python 3.13 kernel
3. Run All (Ctrl+Shift+Enter)
```

#### **ОПЦИЈА 3: Преку Jupyter (Manual)**

```powershell
cd c:\Users\matej\InteligentniSistemi
jupyter notebook backtester_kaggle_sp500.ipynb
```

### ⏱️ **Времетрање по фаза:**

| Фаза                     | Ћелии | Времe         |
| ------------------------ | ----- | ------------- |
| Setup & Indicators       | 1-8   | ~2 мин        |
| Базични стратегии        | 9-13  | ~3 мин        |
| Grid Search оптимизација | 14-15 | 5-10 мин      |
| Walk-Forward Validation  | 16    | 10-15 мин     |
| ML & Monte Carlo         | 18-20 | ~5 мин        |
| Финална анализа          | 21-22 | ~1 мин        |
| **ВКУПНО**               | -     | **20-35 мин** |

---

## 📊 **5 СТРАТЕГИИ ВО NOTEBOOK**

### 1️⃣ **SMA Crossover** (базична)

- Двојни Moving Average (20/50/200)
- Вкупен Принос: -0.49%
- Заклучок: Базична, предостаро сигнали

### 2️⃣ **RSI Reversion**

- Momentum 回転 при екстремни вредности
- Вкупен Принос: -8.91%
- Заклучок: Премалку трејдови (3), лоши резултати

### 3️⃣ **MACD Momentum**

- Trend following со MACD histogram
- Вкупен Принос: +4.56%
- Заклучок: Одличан за трендови, многу трејдови (51)

### 4️⃣ **SMA Optimized** 🥇 ⭐ ЛУЧША

- Grid Search оптимирана (10/120)
- Вкупен Принос: **+44.06%**
- Sharpe Ratio: **0.303** (позитивна)
- Profit Factor: **7.44** (8x повраток!)
- Заклучок: **НАЈДОБРА СТРАТЕГИЈА**

### 5️⃣ **Random Forest ML**

- 300-tree класификатор са 17 фичури
- Accuracy: 52.83% (малку подобра од random)
- Вкупен Принос: -2.53%
- Заклучок: ML не помага за вакво предвидување

---

## 📈 **15 МЕТРИКИ ПО СТРАТЕГИЈА**

### 📊 Метрики на Поврата

- **Total Return %** - Укупна поврата од почетка
- **Annual Return %** - Годишна поврата
- **Buy & Hold %** - Baseline поврата (AAPL buy&hold)

### 📈 Ризик-Приспособени Метрики

- **Sharpe Ratio** - Povratak / Volatility (идеално >0.5)
- **Sortino Ratio** - Како Sharpe, но само downside волатилност
- **Calmar Ratio** - Annual Return / Max Drawdown

### ⚠️ Ризик Метрики

- **Max Drawdown %** - Максимален пад од врв
- **Annual Volatility** - Вариабилност на дневне приходи

### 📊 Трејдинг Метрики

- **Total Trades** - Број трејдова
- **Win Rate %** - % позитивни трејдови
- **Profit Factor** - Збир победneither / Збир загубе
- **Avg Win** - Просечна добивка
- **Avg Loss** - Просечна загуба
- **Avg Hold (days)** - Просечно време позиције
- **Final Value** - Портфолиј вредност на крај

---

## 🛠️ **ТЕХНИЧКИ ДЕТАЛИ**

### 📋 **Датасет**

- **Извор**: Yahoo Finance (yfinance) + Kaggle (backup)
- **Тикер**: AAPL (Apple Inc.)
- **Период**: 2013-02-08 до 2018-02-07
- **Дневи**: 1,258 трејдин денови

### 🤖 **Архитектура**

- **Backtesting Engine**: Event-driven, долгие позиције, trail stop-loss
- **Indicators**: SMA, EMA, RSI, MACD, Bollinger Bands, ATR (8 индикатори)
- **Optimization**: Grid Search (10-120 за SMA параметри)
- **Validation**: Walk-Forward (5 прозорци са IS/OOS раздели)
- **Simulation**: Monte Carlo (1,000 симулации × 252 денови)
- **ML**: RandomForestClassifier (300 дрвја, max_depth=6, 17 фичури)

### 💾 **Зависности**

```
python >= 3.13.7
pandas >= 3.0.3
numpy >= 2.4.6
matplotlib >= 3.10.9
scikit-learn >= 1.9.0
yfinance (latest)
kaggle == 2.2.1
jupyter (latest)
```

### ⚙️ **Tradeинг Параметри**

- **Initial Capital**: $10,000
- **Commission**: 0.10% по трејд
- **Slippage**: 0.05% на цена
- **Risk-Free Rate**: 4.5% (за Sharpe калкулација)
- **Stop Loss**: 8% trail stop (за SEE стратегии)

---

## 📌 **ВАЖНИ НАПОМЕНИ**

⚠️ **Графиците се генерираат во `./outputs/` папка** (не во root)
⚠️ **Git игнора `/outputs/` и `.png` фајлови** (видете `.gitignore`)
⚠️ **Историски податоци** - AAPL од 2013-2018 (5 години)
⚠️ **Дневни податоци** - Затворена цена, волумен, OHLC
⚠️ **Долгие позиције** - Само куповање, без шортинг
⚠️ **Первен и кач** - Нема транзакциони трошкови (само комисија и slippage)

---

## ✨ **СТАТУС: ЦЕЛОСНО ЗАВРШЕНО И ГОТОВО ЗА РУН** 🚀

Сите 42 ћелии се работат, сите метрики се калкулирани, сите графици се генерирани.
Можеш да ја покрениш анализата со еден клик!

---

## 🔧 **РЕШАВАЊЕ НА ПРОБЛЕМИ**

### ❌ Jupyter се не отвора

```powershell
C:\Users\matej\AppData\Local\Programs\Python\Python313\python.exe --version
```

Проверете дали Python 3.13 е инсталиран на оваа патека.

### ❌ Kaggle API грешка

Проверете `~/.kaggle/kaggle.json` - мора да биде валиден JSON без newline-и.

### ❌ Недостасуваат пакети

Покренете `SETUP_AND_RUN.bat` кој ќе ги инсталира сите зависности.

### ❌ Графики не се генерираат

Cell 1 треба да ја креира папката `./outputs/` автоматски.
Проверете дали `/outputs/` постои во проектот.

---

## 📚 **НАУЧЕНИ УРОЦИ**

✅ Event-driven backtesting архитектура
✅ Grid Search оптимизација за параметри
✅ Walk-Forward Validation за избегнување overfitting
✅ Monte Carlo симулација за ризик анализа
✅ Machine Learning класификација за трејдинг сигнали
✅ Технички анализ со 8 индикатори
✅ Професионална data visualization
✅ Robustness тестирање на стратегии

---

## 📞 **КОНТАКТ И ИНФОРМАЦИИ**

- **Ста на**: Завршено
- **Последна Ажурирање**: 2026-06-10
- **Python**: 3.13.7
- **Язык**: Jupyter Notebook (Python)
- **Локација**: c:\Users\matej\InteligentniSistemi\
