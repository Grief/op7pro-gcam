SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE="
"
print_modname() {
  ui_print "*******************************"
  ui_print "*                             *"
  ui_print "*        OnePlus 7 Pro        *"
  ui_print "*        Google Camera        *"
  ui_print "*   MGC_6_1_021_xcam6_beta7a  *"
  ui_print "*        port by xtrme        *"
  ui_print "*                             *"
  ui_print "*******************************"
}

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
