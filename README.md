# alfred-bitwise-evaluator
[Alfred 3][1] workflow for evaluating bitwise expressions.

## Installation
1) Install [alfred-bitwise-evaluator][2] workflow.
2) All further updates are handled automatically.

## Usage
In Alfred, type `bitwise` and enter your bitwise expression which shall be evaluated.

![Alfred workflow screenshot](doc/images/alfred-actions.png?raw=true "")


![Alfred bitwise correct evaluation screenshot](doc/images/alfred-bitwise-evaluated-ok.png?raw=true "")

Expression is being evaluated as you type the expression. If expression cannot be evaluated, either for ilegal characters or syntax error, user will be notified about that.

![Alfred bitwise incorrect evaluation screenshot](doc/images/alfred-bitwise-evaluated-error.png?raw=true "")

By default, the result is shown in decimal and binary form. By pressing <kbd>enter</kbd> key, the results will be copied to clipboard in decimal form. 
This could be overridden, either by pressing the <kbd>⌘</kbd> key, or <kbd>⌥</kbd> key, or <kbd>⌃</kbd> key.

- The first one - <key>⌘</key> - instructs workflow to copy result in binary form to clipboard.
- The second one - <key>⌥</key> - instructs workflow to copy result in hexadecimal form to clipboard.
- The last one - <key>⌃</key> - instructs workflow to copy result in octal form to clipboard.


[1]: https://www.alfredapp.com/
[2]: https://github.com/vookimedlo/alfred-bitwise-evaluator/releases/latest
