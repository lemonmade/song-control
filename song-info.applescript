tell application "iTunes"	try		set currentTrack to current track	on error		return my createItem("null", "null", "No Sogn Currently Playing", "Come on, give me something to do!", "icon.png")	end try		set trackName to name of currentTrack	set artistName to artist of currentTrack	set albumName to album of currentTrack	set theRating to item 1 of my parseRating((rating of currentTrack) / 20)		set mainText to quote & trackName & quote & " (" & theRating & ")"	set subText to "By " & quote & artistName & quote & " off the album " & quote & albumName & quote	return my createItem("null", "null", mainText, subText, "icon.png")end tell-- Helper Functionson replaceString(replaceThis, withThat, original)	set my text item delimiters to replaceThis	set tempItems to every text item of original	set my text item delimiters to withThat	return tempItems as textend replaceString-- escape XML forbidden characters in the given stringon escapeXmlChars(str)	set str to replaceString("&", "&amp;", str)	set str to replaceString("'", "&apos;", str)	set str to replaceString("\"", "&quot;", str)	set str to replaceString("<", "&lt;", str)	set str to replaceString(">", "&gt;", str)	return strend escapeXmlChars-- create XML itemon createItem(uid, arg, title, subtitle, icon)	-- escape forbidden XML characters	set title to escapeXmlChars(title)	set subtitle to escapeXmlChars(subtitle)			return "<?xml version='1.0'?><items>
	<item uid='" & uid & "' arg='" & arg & "'>
	<title>" & title & "</title>
	<subtitle>" & subtitle & "</subtitle>
	<icon>" & icon & "</icon>
	</item></items>"end createItem-- Gives a star visualization and score out of 100 for a score out of 5on parseRating(query)	if query is 0 then		set stars to "• • • • •"		set theRating to 0	else if query is 0.5 then		set stars to "½☆☆☆☆"		set theRating to 10	else if query is 1 then		set stars to "★☆☆☆☆"		set theRating to 20	else if query is 1.5 then		set stars to "★½☆☆☆"		set theRating to 30	else if query is 2 then		set stars to "★★☆☆☆"		set theRating to 40	else if query is 2.5 then		set stars to "★★½☆☆"		set theRating to 50	else if query is 3 then		set stars to "★★★☆☆"		set theRating to 60	else if query is 3.5 then		set stars to "★★★½☆"		set theRating to 70	else if query is 4 then		set stars to "★★★★☆"		set theRating to 80	else if query is 4.5 then		set stars to "★★★★½"		set theRating to 90	else if query is 5 then		set stars to "★★★★★"		set theRating to 100	else		set stars to "• • • • •"		set theRating to "null"	end if		return {stars, theRating}end parseRating