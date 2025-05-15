select *
from Moniepoint

--Total sum of transaction
SELECT SUM(transaction_amount) as Total_transaction
FROM Moniepoint

--Total number of transactions
select count(transaction_amount) as Total_Number_of_transactions
from moniepoint

---Total settlement debits
select sum(settlement_debit) as Settlement_debits
from Moniepoint

--Total settlement credits
select sum(settlement_credit) as Settlement_credits
from Moniepoint

---Total charges
select sum(charge) as Total_charges
from Moniepoint

--Total reversals
select count (*) as Total_Reversals
from moniepoint
where Transaction_Type='Reversal'

--Most frequent transaction type
select transaction_type,
count(transaction_type) as frequency
from Moniepoint
Group by Transaction_Type
order by frequency desc

--Top 5 beneficiary by total transaction value
select top 5 beneficiary,
sum(transaction_amount) as transaction_amount
from Moniepoint
group by Beneficiary
order by sum(transaction_amount) desc

--Top 5 source institution by total transaction amount
select top 5 Source_Institution, sum(transaction_amount) as transaction_amount
from Moniepoint
group by Source_Institution
order by sum(transaction_amount) desc

--Average Credit per month
select datename(month,date) as Month_name,
datepart(month,date) as Month , 
avg(settlement_credit) as Average_Credit
from Moniepoint
group by  datename(month,date), datepart(month,date)
order by month

--Average debit per month
select datename(month,date) as Month_name,
datepart(month,date) as Month ,
avg(settlement_debit) as Average_debit
from Moniepoint
group by  datename(month,date), datepart(month,date)
order by month

--Net cash flow in 2023 and 2024
select year(date) as year, 
month(date) as Month,
datename(month,date) as Month_name,
sum(settlement_credit) - sum(settlement_debit) as Net_cash_flow
from Moniepoint
where year(date) in (2023,2024)
group by  year(date), month(date),datename(month,date)
order by year(date), month(date)


--Monthly net balance change
select datename(month,date) as month, sum(settlement_credit)-sum(settlement_debit) as Net_balance
from moniepoint
group by  datename(month,date)

--Days of the week when sales peak
select datename(weekday,date) as day_of_the_week, sum(Transaction_amount) Total_credit
from moniepoint
group by datename(weekday,date)
order by Total_credit desc

 