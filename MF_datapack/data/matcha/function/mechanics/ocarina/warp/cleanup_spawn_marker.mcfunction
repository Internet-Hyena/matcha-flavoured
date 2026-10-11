tellraw @p "[debug] Unregistered 1 chunk to force load..."
forceload remove ~ ~
tellraw @p {"text": "[debug] Killed ", "extra": [{"selector": "@s"}]}
kill @s