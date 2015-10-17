property imageFiles : {"jpg", "pef", "dng", "jpeg"}

on adding folder items to theWatchedFolder after receiving theDetectedItems
	repeat with theItem in theDetectedItems
		set theItemPath to POSIX path of theItem
		set ImageFile to POSIX file theItemPath
		tell application "System Events"
			if name extension of theItem is in imageFiles then
				tell application "Photos"
					set DestinationAlbumName to "Inbox"
				
					if not (exists container named DestinationAlbumName) then
						make new album named DestinationAlbumName
					end if
					
					import ImageFile into container named DestinationAlbumName with skip check duplicates
				end tell
				tell application "Finder"
					delete theItem
				end tell
			end if
		end tell
	end repeat
end adding folder items to
