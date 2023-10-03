# Changing the default mail app in command line without an account 

[source](https://apple.stackexchange.com/questions/261881/set-default-mail-client-in-macos-without-adding-an-email-account)

1.Python3
2. Install launchservices [newest module](https://pypi.org/project/pyobjc-framework-LaunchServices/) `pip install pyobjc-framework-LaunchServices`
4.

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
