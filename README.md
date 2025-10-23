# Chrome-Temp-File-Cleanup
Deletes user temp files older than one day. Cleans out Google Chrome temporary files. Only for logged in user.
# Clean-UserTempAndChrome.ps1

## Overview
This PowerShell script deletes temporary files older than one day from the current user's profile and clears selected Google Chrome cache items. It’s designed for routine cleanup and performance maintenance on Windows systems.

---

## Features
- Deletes temp files older than 24 hours from `%LOCALAPPDATA%\Temp`
- Cleans Chrome cache and history-related files from the default user profile
- Operates only on the currently logged-in user
- Uses safe recursive deletion with force handling

---

## Targeted Chrome Items
The script removes the following from `Google\Chrome\User Data\Default`:
- `Archived History`
- `Cache\*`
- `Cookies`
- `Media Cache`
- `Top Sites`
- `Visited Links`
- `Web Data`

---

## Usage

### Prerequisites
- Windows OS
- PowerShell 5.0 or later
- Chrome installed (optional, but Chrome cleanup will be skipped if not present)

### Run the Script
```powershell
.\Clean-UserTempAndChrome.ps1
