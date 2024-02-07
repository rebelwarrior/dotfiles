# Changing the default mail app in command line without an account 

[source](https://apple.stackexchange.com/questions/261881/set-default-mail-client-in-macos-without-adding-an-email-account)

1. Python3  
2. Install launchservices [newest module](https://pypi.org/project/pyobjc-framework-LaunchServices/) `pip install pyobjc-framework-LaunchServices`  --> New file might be called [Core Services](https://pypi.org/project/pyobjc-framework-CoreServices/#description) `pip install pyobjc-framework-CoreServices`
3.

```python

import CoreServices;
result = CoreServices.LSSetDefaultHandlerForURLScheme(
    "mailto",
    "com.microsoft.Outlook")
print("Result: %d (%s)" % (
    result,
    "Success" if result == 0 else "Error"))
EOF

```

# Changing how mailto: links are handled in Chrome to use outlook.com
[source](https://superuser.com/questions/977736/how-can-i-set-chrome-to-let-mailto-links-be-handled-by-outlook-com)

1. Go to Outlook.com and sign in.
2. Open the console (Cmd + Opt + J)
3. type `navigator.registerProtocolHandler("mailto", "https://outlook.office.com/?path=/mail/action/compose&to=%s", "Office 365");`
4. This should open the prompt if you want to register outlook to open mailto: links.
5. Go to `chrome://settings/handlers` click on the three dots and "set as default"
