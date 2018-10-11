# alfred-bitwise-evaluator
[Alfred 3][1] workflow for evaluating bitwise expressions.

This code has been modified from [vookimedle][2], and now results in the workflow computing the same things, but displaying them all at once in four different Alfred items. All the different values can be copied directly to the clipboard.

## Installation
1) Install [alfred-bitwise-evaluator][3] workflow.
2) All further updates are handled automatically.

## Usage
In Alfred, type `bw` and enter your bitwise expression which shall be evaluated.
![bitwise evaluate](doc/images/bw-enter-expression.png?raw=true "")

Action the relevant item with the command key and corresponding number to copy it to your clipboard:
![bitwise show all](doc/images/bw-valid-expression.png?raw=true "")

Expression is being evaluated as you type the expression. If expression cannot be evaluated, either for illegal characters or syntax error, user will be notified about that.
![bitwise show all error](doc/images/bw-invalid-expression.png?raw=true "")


## Bitwise expression syntax and operators precedence
Workflow is based on Perl, therefore it uses its syntax and operators precedence, which is easy to use.
The golden rule in programming languages is the following: _"If you are unsure about the operator precedence, always use parentheses to be sure what you are doing."_. It's not a shame!


| OPERATOR NAME       | SYNTAX |
|---------------------|:------:|
| Bitwise NOT         |   ~a   |
| Bitwise AND         |  a & b |
| Bitwise OR          |  a | b |
| Bitwise XOR         |  a ^ b |
| Bitwise left shift  | a << b |
| Bitwise right shift | a >> b |

## Integer formats
The four formats listed below are printed.

| INTEGER FORMAT | SYNTAX EXAMPLE |
|----------------|:--------------:|
| Decimal        |      1234      |
| Binary         |    0b1110011   |
| Hexadecimal    |     0x1234     |
| Octal          |      01234     |


## Note
Before the expression is evaluated, input data will be checked for illegal characters. If those are found, evaluation will not continue. This is done for making the workflow harmless. If you remove this check, you could evaluate any Perl code, which could be pretty dangerous. Do that only if you know what you are doing!!!

[1]: https://www.alfredapp.com/
[2]: https://github.com/vookimedlo/alfred-bitwise-evaluator
[3]: https://github.com/vookimedlo/alfred-bitwise-evaluator/releases/latest
