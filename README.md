# alfred-bitwise-evaluator modified to show all results immediately
[Alfred 3][1] workflow for evaluating bitwise expressions.

This code has been modified from [vookimedle][2], and now results in the workflow computing the same things, but displaying them all at once in Alfreds different items. All the different values can still be copied directly to the clipboard.

An image preview of what it looks like now can be seen below:
![bitwise show all](doc/images/alfred-bw-show-all.png?raw=true "")

Likewise, the error message when writing an expression that can't be evaluated is shown as follows:
![bitwise show all error](doc/images/alfred-bw-show-all-error.png?raw=true "")

## Installation
1) Install [alfred-bitwise-evaluator][3] workflow.

## Usage
In Alfred, type `bw` and enter your bitwise expression which shall be evaluated. Action the relevant item to copy it to your clipboard.

## Bitwise expression syntax and operators precedence
Workflow is based on Perl, therefore it uses its syntax and operators precedence, which is easy to use.
The golden rule in programming languages is following: _"If you are unsure about the operator precedence, always use parentheses to be sure what you are doing."_. It's not a shame!


| OPERATOR NAME       | SYNTAX |
|---------------------|:------:|
| Bitwise NOT         |   ~a   |
| Bitwise AND         |  a & b |
| Bitwise OR          |  a | b |
| Bitwise XOR         |  a ^ b |
| Bitwise left shift  | a << b |
| Bitwise right shift | a >> b |

## Integer formats
Four formats listed below are supported.

| INTEGER FORMAT | SYNTAX EXAMPLE |
|----------------|:--------------:|
| decimal        |      1234      |
| binary         |    0b1110011   |
| octal          |      01234     |
| hexadecimal    |     0x1234     |


## Note
Before the expression is evaluated, input data will be checked for illegal characters. If those are found, evaluation will not continue. This is done for making the workflow harmless. If you remove this check, you could evaluate any Perl code, which could be pretty dangerous. Do that only if you know what you are doing!!!

[1]: https://www.alfredapp.com/
[2]: https://github.com/vookimedlo/alfred-bitwise-evaluator
[3]: https://github.com/shmulvad/alfred-bitwise-evaluator/raw/master/BitwiseEvaluatorShowImmediatelyCopy.alfredworkflow
