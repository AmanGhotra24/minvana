<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html>
<head>
<title><xsl:value-of select="/rss/channel/title"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<style>
body{font-family:-apple-system,Helvetica,Arial,sans-serif;max-width:720px;margin:0 auto;padding:32px 20px;color:#111;background:#fff}
.header{display:flex;gap:20px;align-items:center;margin-bottom:8px}
.header img{width:120px;height:120px;border-radius:16px}
h1{font-size:28px;margin:0}
.tag{color:#666;margin:4px 0 24px}
.ep{border-top:1px solid #eee;padding:18px 0}
.ep h2{font-size:18px;margin:0 0 6px}
.ep p{color:#444;margin:0 0 10px;font-size:15px}
.ep .meta{color:#888;font-size:13px}
audio{width:100%;margin-top:8px}
.badge{display:inline-block;background:#2563EB;color:#fff;font-size:12px;font-weight:700;padding:4px 10px;border-radius:20px;margin-bottom:16px}
</style>
</head>
<body>
<div class="header">
<img src="https://minvana.com/assets/podcast-cover.jpg" alt="Minvana Minute"/>
<div><h1><xsl:value-of select="/rss/channel/title"/></h1></div>
</div>
<div class="tag"><xsl:value-of select="/rss/channel/description"/></div>
<div class="badge">PODCAST FEED — open in Apple Podcasts / Spotify</div>
<xsl:for-each select="/rss/channel/item">
<div class="ep">
<h2><xsl:value-of select="title"/></h2>
<p><xsl:value-of select="description"/></p>
<div class="meta"><xsl:value-of select="pubDate"/> · <xsl:value-of select="itunes:duration"/> sec</div>
<audio controls="controls" preload="none">
<source src="{enclosure/@url}" type="audio/mpeg"/>
</audio>
</div>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
