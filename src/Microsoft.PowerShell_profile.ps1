# Theme Initialization
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/zash.omp.json" | Invoke-Expression

# Import PSReadLine Module if not already imported
Import-Module PSReadLine

# ----------------------------
# Linux-Style Key Bindings
# ----------------------------

# **Cursor Movement**
Set-PSReadLineKeyHandler -Key Ctrl+a -Function 'BeginningOfLine'     # Move cursor to the beginning of the line
Set-PSReadLineKeyHandler -Key Ctrl+e -Function 'EndOfLine'           # Move cursor to the end of the line
Set-PSReadLineKeyHandler -Key Ctrl+b -Function 'BackwardChar'        # Move cursor backward by one character
Set-PSReadLineKeyHandler -Key Ctrl+f -Function 'ForwardChar'         # Move cursor forward by one character
Set-PSReadLineKeyHandler -Key Alt+b  -Function 'BackwardWord'        # Move cursor backward by one word
Set-PSReadLineKeyHandler -Key Alt+f  -Function 'ForwardWord'         # Move cursor forward by one word

# **Editing Text**
Set-PSReadLineKeyHandler -Key Ctrl+d -Function 'DeleteChar'          # Delete the character under the cursor
Set-PSReadLineKeyHandler -Key Ctrl+k -Function 'KillLine'            # Delete from cursor to the end of the line
Set-PSReadLineKeyHandler -Key Ctrl+u -Function 'BackwardKillLine'    # Delete from cursor to the beginning of the line
Set-PSReadLineKeyHandler -Key Ctrl+w -Function 'BackwardKillWord'    # Delete the word before the cursor
Set-PSReadLineKeyHandler -Key Alt+d  -Function 'DeleteWord'          # Delete the word after the cursor

# **Yanking (Pasting) and Undo**
Set-PSReadLineKeyHandler -Key Ctrl+y -Function 'Yank'                # Paste the last killed text
Set-PSReadLineKeyHandler -Key Ctrl+z -Function 'Undo'                # Undo the last action
Set-PSReadLineKeyHandler -Key Ctrl+Shift+z -Function 'Redo'          # Undo the last action

# **Searching and Clearing**
Set-PSReadLineKeyHandler -Key Ctrl+r -Function 'ReverseSearchHistory' # Initiate reverse incremental search
Set-PSReadLineKeyHandler -Key Ctrl+l -Function 'ClearScreen'          # Clear the screen

# **Line Navigation**
Set-PSReadLineKeyHandler -Key Ctrl+n -Function 'NextLine'             # Move to the next line in history
Set-PSReadLineKeyHandler -Key Ctrl+p -Function 'PreviousLine'         # Move to the previous line in history
