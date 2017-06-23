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
