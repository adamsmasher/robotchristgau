<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=stylesheet href="/rxgau.css" type="text/css">
<meta name=robots content="INDEX,FOLLOW">
<title>Robot Christgau: CG: {{ artist_name }}</title>
</head>
<body bgcolor="#e0ffff">
<table width="100%" border=0 cellspacing=0 cellpadding=10>
<tr><td colspan=2 bgcolor="#1010e0">
<p><a class=xlnk href="/"><img class=xlnk src="/rxgau.gif" width=287 height=47 alt="Robot Christgau: Dean of American Rock Critics"></a></p>
</td></tr>
<tr><td bgcolor="#1010e0" valign=top>
<table cellspacing=0 cellpadding=3 border=1>
<tr><td class=xlnk nowrap><a class=xlnk href="/cg.php">Consumer Guide:</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/web/cgusers.php">User's Guide</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/bk-cg90/grades-90s.php">Grades 1990-</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/bk-cg70/grades.php">Grades 1969-89</a><br>
&nbsp;&nbsp;<a class=xlnk href="http://music.msn.com/music/consumerguide">Last CG</a><br>
&nbsp;&nbsp;<a class=xlnk href="http://social.entertainment.msn.com/music/blogs/expert-witness-blog.aspx">Expert Witness</a><br>
<tr><td class=xlnk nowrap><a class=xlnk href="/books.php">Books</a></td></tr>
<tr><td class=xlnk nowrap><em class=lnk>Writings:</em><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/cg/index.php">CG Columns</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/bn/index.php">Rock&amp;Roll&amp;&nbsp;[new]</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/rock/index.php">Rock&amp;Roll&amp;&nbsp;[old]</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/music/index.php">Music Essays</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/cdrev/index.php">Music Reviews</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/bkrev/index.php">Book Reviews</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/play/index.php">Playboy</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/bl/index.php">Blender</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/rs/index.php">Rolling Stone</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/vr/index.php">Video Reviews</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/pnj/index.php">Pazz &amp; Jop</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/recyc/index.php">Recyclables</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/news/index.php">Newsprint</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/list/index.php">Lists</a><br>
&nbsp;&nbsp;<a class=xlnk href="/xg/misc/index.php">Miscellany</a><br>
<tr><td class=xlnk nowrap><a class=xlnk href="/biblio.php">Bibliography</a></td></tr>
<tr><td class=xlnk nowrap><a class=xlnk href="/xg/npr/index.php">NPR</a></td></tr>
<tr><td class=xlnk nowrap><a class=xlnk href="http://www.najp.org/articles/robert-christgau/">NAJP Blog</a></td></tr>
<tr><td class=xlnk nowrap><em class=lnk>Web Site:</em><br>
&nbsp;&nbsp;<a class=xlnk href="/index.php">Home</a><br>
&nbsp;&nbsp;<a class=xlnk href="/map.php">Site Map</a><br>
&nbsp;&nbsp;<a class=xlnk href="/newest.php">What's New?</a><br>
<tr><td class=xlnk nowrap><a class=xlnk href="/u/cd/">Carola Dibbell</a></td></tr>
<tr><td class=xlnk><a class=xlnk href="/get_artist.php">CG Search:</a>
<form method=get action="/get_artist.php">
<input type=text name=name size=15>
</form></tr>
<tr><td class=xlnk><a class=xlnk href="/htsearch.php">Text Search:</a>
<form method=get action="/htsearch.php">
<input type=text name=words size=15>
</form></tr>
<tr><td class=xlnk><a class=xlnk href="http://google.com/search">Google Search:</a>
<form method="get" action="http://google.com/search">
<input type="hidden" name="sitesearch" value="robertchristgau.com">
<input type="text" name="q" size="15" maxlength="255">
</form></tr>
</table>
</td><td valign=top width="100%">
<!-- end standard header -->

<h2>{{ artist_name }}</h2>
<ul>
{% for album in albums %}
    <li><b>{{ album.name }}</b> [{{ label }}, {{ album.year }} <b>{{ album.rating }}</b>
{% endfor %}
</ul>
<h3>Consumer Guide Reviews:</h3>
{% for album in albums %}
    <b>{{ album.name }}</b> [{{ label }}, {{ album.year }}<br>
    {{ album.review }} <b>{{ album.rating }}</b>
{% endfor %}

<!-- begin standard footer -->
</td>
</table>
</body>
</html>
