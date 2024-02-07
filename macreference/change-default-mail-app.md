# Changing the default mail app in command line without an account 

[source](https://apple.stackexchange.com/questions/261881/set-default-mail-client-in-macos-without-adding-an-email-account)

1. Python3  
2. Install launchservices [newest module](https://pypi.org/project/pyobjc-framework-LaunchServices/) `pip install pyobjc-framework-LaunchServices`  --> New file might be called [Core Services](https://pypi.org/project/pyobjc-framework-CoreServices/#description `pip install pyobjc-framework-CoreServices`
3.

```python
import CoreServices;
result = CoreServices.LSSetDefaultHandlerForURLScheme(
    "mailto",
    "com.microsoft.Outlook")
print("Result: %d (%s)" % (
    result,
    "Success" if result == 0 else "Error"))
EOF```

```
