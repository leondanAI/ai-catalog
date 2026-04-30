<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Sitemap — aitoolfit.ai</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body { background: #0a0a0a; color: #f0f0f0; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif; font-size: 14px; }
    header { background: #141414; border-bottom: 1px solid rgba(255,255,255,0.08); padding: 20px 32px; display: flex; align-items: center; gap: 16px; }
    header a { color: #7c6af7; text-decoration: none; font-weight: 600; font-size: 18px; }
    header span { color: #555; font-size: 13px; }
    .count { background: #1c1c1c; color: #888; padding: 3px 10px; border-radius: 20px; font-size: 12px; border: 1px solid rgba(255,255,255,0.08); }
    main { max-width: 900px; margin: 32px auto; padding: 0 24px; }
    table { width: 100%; border-collapse: collapse; }
    thead tr { background: #141414; }
    th { padding: 10px 14px; text-align: left; color: #555; font-weight: 500; font-size: 12px; text-transform: uppercase; letter-spacing: 0.05em; border-bottom: 1px solid rgba(255,255,255,0.08); }
    td { padding: 9px 14px; border-bottom: 1px solid rgba(255,255,255,0.05); vertical-align: middle; }
    tr:hover td { background: #141414; }
    td a { color: #7c6af7; text-decoration: none; word-break: break-all; }
    td a:hover { text-decoration: underline; }
    .pri { color: #2dd4a0; font-weight: 600; }
    .freq { color: #888; }
    .date { color: #555; font-size: 12px; white-space: nowrap; }
  </style>
</head>
<body>
  <header>
    <a href="https://aitoolfit.ai">aitoolfit.ai</a>
    <span>/ sitemap.xml</span>
    <span class="count"><xsl:value-of select="count(sm:urlset/sm:url)"/> URLs</span>
  </header>
  <main>
    <table>
      <thead>
        <tr>
          <th>URL</th>
          <th>Last modified</th>
          <th>Change freq</th>
          <th>Priority</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="sm:urlset/sm:url">
          <tr>
            <td><a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a></td>
            <td class="date"><xsl:value-of select="sm:lastmod"/></td>
            <td class="freq"><xsl:value-of select="sm:changefreq"/></td>
            <td class="pri"><xsl:value-of select="sm:priority"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </main>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
