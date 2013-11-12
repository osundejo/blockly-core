#!/usr/bin/perl

if (@ARGV != 1) {
  die "Use via codeorg-messages.sh";
};

($js_locale) = @ARGV;

print "goog.provide('Blockly.Msg.", $js_locale, "');\n";
print "goog.require('Blockly.Msg');\n";

while (<STDIN>) {
  if (/^ *"(.*)?": (".*"),? *$/) {
    print 'Blockly.Msg.', $1, ' = ', $2, ";\n";
  }
}
