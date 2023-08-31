function banking4openPlist --description 'Open Banking4 plist in vscode'
  plutil -convert xml1 ~/Library/Preferences/com.subsembly.Banking4.plist
  code ~/Library/Preferences/com.subsembly.Banking4.plist
end