# OriginClearCache
Clear the Cache of the Windows Origin Client. Great for when Games stop auto-updating or you have an Update Loop situation.

The batch script will delete all folders within the %programdata%\Origin folder EXCEPT the "LocalContent" folder which is required by Origin.
It will then recursively delete all within the %localappdata%\Origin folder.

Ensure that Origin is closed and the Web Helper Service is not running.
