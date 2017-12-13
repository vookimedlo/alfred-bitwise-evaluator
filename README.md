# alfred-bitwise-evaluator
[Alfred 3][1] workflow for evaluating bitwise expressions.

## Installation
1) Install [alfred-bitwise-evaluator][2] workflow.
2) All further updates are handled automatically.

## Usage
In Alfred, type `bitwise` and enter your bitwise expression which shall be evaluated.

![Alfred workflow screenshot](doc/images/alfred-actions.png?raw=true "")


![Alfred bitwise correct evaluation screenshot](doc/images/alfred-bitwise-evaluated-ok.png?raw=true "")

Expression is being evaluated as you type the expression. If expression cannot be evaluated, either for illegal characters or syntax error, user will be notified about that.

![Alfred bitwise incorrect evaluation screenshot](doc/images/alfred-bitwise-evaluated-error.png?raw=true "")

By default, the result is shown in decimal and binary form. By pressing <kbd>enter</kbd> key, the results will be copied to clipboard in decimal form. 
This could be overridden, either by pressing the <kbd>⌘</kbd> key, or <kbd>⌥</kbd> key, or <kbd>⌃</kbd> key.

- The first one - <key>⌘</key> - instructs workflow to copy result in binary form to clipboard.
- The second one - <key>⌥</key> - instructs workflow to copy result in hexadecimal form to clipboard.
- The last one - <key>⌃</key> - instructs workflow to copy result in octal form to clipboard.

## Bitwise expression syntax and operators precedence
Workflow is based on Perl, therefore it uses its syntax and operators precedence, which is easy to use.
The golden rule in programming languages is following: _"If you are unsure about the operator precedence, always use parentheses to be sure what you are doing."_. It's not a shame!.

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
Before the expression is evaluated, input data will be checked for illegal characters. If those are find, evaluation will not continue. This is done for making the workflow harmless. If you remove this check, you could evaluate any Perl code, which could be pretty dangerous. Do that only if you know what you are doing!!!

[1]: https://www.alfredapp.com/
[2]: https://github.com/vookimedlo/alfred-bitwise-evaluator/releases/latest
