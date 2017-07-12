# Debt Collector Test

## Contents
* [Context](#Context)
* [My Approach](#My Approach)
* [Installation](#Installation)
* [RSpec Tests](#RSpec)
* [Usage](#Usage)

## <a name="Context">Context</a>:
Context
============

The finance department uses a legacy system to handle all their invoices. However due to limitations with this product they cannot easily extract reports from it.

They want us to read an export of their raw data and present to them a list of the total debt owed to us grouped by company.

For this we've prepared a small fictional sample file, which you find [here](invoices.csv).

This file contains company names, invoice numbers, invoice amounts in pence and the applicable VAT rates.
What we'd like you to do is write the code you think is suitable to solve this problem case.

For clarity a brief example of input and the output we expect.

Given the following input file:

```
Company name,Invoice number,Amount in pence excl vat,VAT Rate
Soho House Berlin,20169002,585679,20
```

We expect the following output:

```
Soho House Berlin: £7,028.15 incl. VAT
```

Feel free to use anything from the standard library or any external libraries that you think make sense.

What we'd expect to receive is the required source code to feed [this file](invoices.csv) to and get similar output as above.

## <a name="My Approach">My Approach</a>:

From an initial solution which saw the presence of both the CSV file processing logic and a class, DebtCollector, responsible for calculating the amount in pounds including VAT and displaying the desired formatted output, I carried on separating the two by distributing them into two different files. I made this choice in order to separate concerns and to be able to test my DebtCollector class.

So, located at the root level, the 'csv_reader.rb' file is responsible for reading and iterating through the invoices.csv file. It does so by instantiating objects of the DebtCollector class, which is required at the top of the file.

I moved on by separating the concerns of the DebtCollector class which initially had two public methods: one responsible for converting the amount to pounds, including VAT, decimal numbers and some formatting (adding commas to separate three digit groups) and one responsible for displaying the required output. I decided that the DebtController should be responsible for returning the formatted output, so I left the second method as the only public method of the class and broke down the other public method into small, private methods, each one delegated to a single responsibility.

Last but not least, the tests cover .csv rows with a 20 or 0 VAT rate, as per the contents of the invoices.csv file, and then a third test scenario which presents a row with a VAT rate equal to 15 and the expected amount output.

Technologies used: Ruby, RSpec.


## <a name="Installation">Installation</a>
* To clone the repository:
```shell
$ git clone https://github.com/enonnai/debtcollector-test
$ cd debtcollector-test
$ bundle
```

## <a name="Rspec">RSpec Tests</a>
```shell
$ cd debtcollector-test
$ rspec
```

## <a name="Usage">Usage</a>
* From the terminal and within the repository's root run:
```
$ ruby csv_reader.rb
```
