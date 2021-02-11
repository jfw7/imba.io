tag app-clock
	css div
		transform-origin: 50% 100% rd:1
		pos:absolute b:50% l:50% x:-50%
		
	<self[pos:relative w:100% rd:2]>
		let ts = Date.now! / 60000 + utc * 60
		<header[fs:xl fw:700 ta:center c:gray8/40 p:2]> name
		<div[bg:gray8 h:30% w:5px rotate:{ts / 720}]>
		<div[bg:gray6 h:42% w:4px rotate:{ts / 60}]>
		<div[bg:red5 h:45% w:2px rotate:{ts}]>
		<div[size:10px y:50% bg:red5 rd:full]>

tag app
	<self[d:grid gtc: 1fr 1fr gap:4 pos:abs w:100% h:100% p:4]>
		<app-clock[bg:pink2] name='New York' utc=-5>
		<app-clock[bg:purple2] name='San Fran' utc=-8>
		<app-clock[bg:indigo2] name='London' utc=0>
		<app-clock[bg:sky2] name='Tokyo' utc=9>

imba.mount <app autorender=2fps>