use strict;

#sample bitwise (1|2)<<6&~100^0b01

my $query = '{query}';

if ($query=~m#^[\s0-9a-fA-F_<|>\~\-\+*/bx&)(^]+$#)
  {
    my $answer = eval $query;

    if ($@)
      {
        print &createItem("Cannot evaluate expression.", $query, "error")
      }
    else
      {
        print &createItem($answer, ("0b" . sprintf "%b", $answer), $answer, "true");
      }
  }
else
  {
    # Contains ilegal chars
    #
    print &createItem("Cannot evaluate expression.", $query, "error")
  }

sub createItem
  {
    my ($title, $subtitle, $arg, $isNumberResult) = @_;
    my $resultBinary = "Still cannot evaluate expression.", $title;
    my $resultHex    = "Nope, not this one either.", $title;
    my $resultOctal  = "You guessed it. This also doesn't work.", $title;

    if ($isNumberResult)
      {
        my ($title, $subtitle, $arg, $isNumberResult) = @_;
        $resultBinary = "0b" . sprintf "%b", $title;
      $resultHex    = "0x" . sprintf "%X", $title;
        $resultOctal  = "0"  . sprintf "%o", $title;
      }
    my $json = <<"END_JSON";
{"items": [
    {
        "title": "$title",
        "subtitle": "Decimal. Action item to copy",
        "arg": "$arg",
        "autocomplete": "$title",
        "icon": {
            "path": "icon.png"
        },
    },
    {
        "title": "$resultBinary",
        "subtitle": "Binary. Action item to copy",
        "arg": "$resultBinary",
        "autocomplete": "$resultBinary",
        "icon": {
            "path": "icon.png"
        },
    },
    {
        "title": "$resultHex",
        "subtitle": "Hexadecimal. Action item to copy",
        "arg": "$resultHex",
        "autocomplete": "$title",
        "icon": {
            "path": "icon.png"
        },
    },
    {
        "title": "$resultOctal",
        "subtitle": "Octal. Action item to copy",
        "arg": "$resultOctal",
        "autocomplete": "$title",
        "icon": {
            "path": "icon.png"
        },
    }
]}
END_JSON
  }
