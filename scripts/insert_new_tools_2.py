#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Insert new tools: adobe-firefly, recraft, whimsical-ai, murf-ai, koyfin."""
import urllib.request, json, os

SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')
if not SB_SERVICE:
    print('ERROR: Set SB_SERVICE_KEY'); exit(1)

HDRS = {
    'apikey': SB_SERVICE,
    'Authorization': f'Bearer {SB_SERVICE}',
    'Content-Type': 'application/json',
}

NEW_TOOLS = [
  {
    'slug': 'adobe-firefly',
    'lang': 'en',
    'name': 'Adobe Firefly',
    'url': 'https://firefly.adobe.com',
    'domain': 'firefly.adobe.com',
    'category': 'design',
    'badge': 'freemium',
    'users': '10M+',
    'best_for': 'Commercially safe AI image and video generation with licensed training data',
    'description': 'Adobe\'s AI creative suite for generating images, vectors, video, and audio. Unique advantage: trained only on licensed and public domain content — safe for commercial use. Free; Standard $9.99/mo; Pro $19.99/mo.',
    'description_long': "Adobe Firefly is Adobe's family of AI generative models integrated across Creative Cloud and available as a standalone web experience at firefly.adobe.com. The defining characteristic of Firefly is commercial safety — unlike competing image generation tools that trained on scraped internet content, Firefly was trained exclusively on licensed Adobe Stock content, openly licensed material, and public domain works. This makes AI-generated images, vectors, and video commercially safe to use without intellectual property risk.\n\nFirefly 4.0 (released 2026) expanded the generation suite beyond images to include vector graphics, video clips, audio, and 3D materials. The Image 3 model produces photorealistic output comparable to Midjourney and Flux. The Generative Fill feature in Photoshop and the Text to Vector feature in Illustrator brought Firefly generation directly into the professional workflow tools designers already use daily.\n\nKey capabilities include Image 3 for text-to-image generation, Generative Fill (expand images, remove and replace objects), Text to Vector for AI-generated SVG illustrations, Firefly Video for AI video clip generation, structure and style references for guided generation, and integration with Photoshop, Illustrator, and Premiere Pro.\n\nPricing: Free plan provides 25 generative credits per month. Standard at $9.99 per month provides 100 credits. Pro at $19.99 per month provides 250 credits and access to all Firefly models. Premium at $199.99 per month provides 1,000 credits for high-volume production. All Creative Cloud All Apps subscribers receive Firefly credits included with their subscription.\n\nLimitations: The credit-based model limits generation volume — 250 credits per month on Pro requires conservative use. Firefly Image 3 quality, while excellent, faces strong competition from Midjourney and Flux for purely aesthetic generation. Vector generation is innovative but early-stage.\n\nBest suited for creative professionals at agencies and brands who need commercially safe AI-generated images for client work, and Adobe Creative Cloud users who want AI generation integrated with Photoshop and Illustrator.",
    'pros': ['Commercially safe — trained on licensed content only, no IP risk for professional use', 'Integrated directly into Photoshop, Illustrator, and Premiere Pro', 'Text to Vector generates editable SVG illustrations — unique capability not on competing platforms', 'Firefly Video adds AI video generation to the Adobe workflow', 'Free plan provides 25 credits/month — testable without payment'],
    'cons': ['Credit-based pricing limits generation volume — 250/mo on Pro', 'Image quality strong but competition from Midjourney and Flux for aesthetic generation', 'Vector generation innovative but early-stage in quality and reliability', 'Premium plan at $199.99/mo required for high-volume professional production'],
    'rating': None,
    'also_consider': ['canva-ai', 'recraft', 'midjourney'],
    'published': True,
  },
  {
    'slug': 'recraft',
    'lang': 'en',
    'name': 'Recraft',
    'url': 'https://recraft.ai',
    'domain': 'recraft.ai',
    'category': 'design',
    'badge': 'freemium',
    'users': '3M+',
    'best_for': 'AI image and vector/SVG generation for brand design and illustration',
    'description': 'AI design tool that generates images AND native vector/SVG output — unique among AI generators. 3M+ users. Free 50 gen/day; Pro $25/mo. Used by Netflix, HubSpot, and Airbus.',
    'description_long': "Recraft is an AI image and vector design platform that uniquely generates both raster images and native vector/SVG output — making it the only major AI tool that produces fully editable vector graphics from text prompts. This capability is critical for brand designers who need logos, icons, and illustrations in scalable vector formats rather than pixel-based images.\n\nRecraft V3, released in late 2024, became one of the top-rated models on the FLUX.1 benchmark and achieved the highest score on the T2I-CompBench for text-image alignment. The platform is used by designers at Netflix, HubSpot, and Airbus for brand asset generation. The interface is clean and design-focused — with style controls, color palette settings, and a brand kit for consistent visual output.\n\nKey capabilities include text-to-image generation (Recraft V3), native vector/SVG output, icon generation, illustration generation, image editing (expand, remove background, replace background), brand kit for style consistency, style library for consistent visual identity, and API for integration.\n\nPricing: Free plan provides 50 generations per day — generous compared to most AI image tools. Pro at $25 per month provides 3,000 fast generations per month, commercial rights, and higher resolution output. Enterprise pricing is custom.\n\nLimitations: Pro plan's 3,000 generations per month may limit high-volume production workflows. The tool is design-focused rather than a general creative tool — it excels at brand assets and illustrations but is less suited for photorealistic image generation where Midjourney or Flux are stronger.\n\nBest suited for brand designers, graphic designers, and marketing teams who need AI-generated brand assets — particularly those needing scalable vector/SVG formats for logos, icons, and illustrations.",
    'pros': ['Only major AI generator with native vector/SVG output — critical for brand assets', 'Recraft V3 achieves top benchmark scores for text-image alignment', 'Free plan with 50 generations/day — one of the most generous free tiers in AI image generation', 'Brand kit and style library maintain visual consistency across generated assets', 'Used by Netflix, HubSpot, and Airbus — enterprise-validated quality'],
    'cons': ['Design-focused — less suited for photorealistic image generation than Midjourney or Flux', 'Pro 3,000 generations/month can limit high-volume production workflows', 'Vector generation, while unique, still requires review for complex designs', 'Less brand recognition than Adobe Firefly or Canva for enterprise procurement'],
    'rating': None,
    'also_consider': ['adobe-firefly', 'canva-ai', 'figma-ai'],
    'published': True,
  },
  {
    'slug': 'whimsical-ai',
    'lang': 'en',
    'name': 'Whimsical AI',
    'url': 'https://whimsical.com',
    'domain': 'whimsical.com',
    'category': 'design',
    'badge': 'freemium',
    'users': '4M+',
    'best_for': 'AI-generated flowcharts, mind maps, and wireframes from text',
    'description': 'Visual collaboration tool for flowcharts, mind maps, wireframes, and docs — now with AI generation from text prompts. Free; Pro $10/editor/mo.',
    'description_long': "Whimsical is a visual collaboration platform for creating flowcharts, mind maps, wireframes, sticky notes, and documents — all in an integrated canvas-based interface. With over 4 million users and 135,000+ monthly searches, it is one of the most widely used tools for visual thinking and documentation.\n\nWhimsical AI, added in 2023 and expanded through 2024-2025, generates flowcharts, mind maps, and wireframes from text descriptions. A designer can describe a user flow or information architecture in natural language and receive a complete diagram that can be edited immediately. This reduces the time spent on initial diagram creation from hours to minutes.\n\nKey capabilities include AI flowchart generation from text, AI mind map generation, AI wireframe generation, real-time multiplayer collaboration, infinite canvas, drag-and-drop diagram building, integration with Figma, Notion, and Confluence, template library, and shareable links for viewing.\n\nPricing: Free plan provides unlimited boards with a Whimsical watermark. Pro at $10 per editor per month provides unlimited private boards, password protection, guest access, custom workspace, and export options without watermarks. Org plan at $20 per editor per month adds admin controls and SSO.\n\nLimitations: Whimsical AI is more focused on diagrams and flowcharts than full UI design — it is not a Figma competitor for complex UI design. The AI generation is strong for structured diagrams but less capable for detailed wireframes. The free plan watermark limits professional use.\n\nBest suited for product managers, designers, and teams who do a lot of process documentation, user flow mapping, and information architecture work — and want AI to accelerate initial diagram creation.",
    'pros': ['AI generates complete flowcharts, mind maps, and wireframes from text descriptions', '4M+ users with strong adoption in product and design teams', 'Real-time multiplayer collaboration on shared canvases', 'Pro at $10/editor/mo is very affordable compared to diagramming alternatives', 'Integrates with Figma, Notion, and Confluence for existing workflows'],
    'cons': ['Not a full UI design tool — less capable than Figma for detailed component design', 'AI wireframe generation less polished than AI flowchart/mind map generation', 'Free plan watermark limits professional use without upgrading', 'Less customization than dedicated diagramming tools like Lucidchart or Miro'],
    'rating': None,
    'also_consider': ['figma-ai', 'uizard', 'relume'],
    'published': True,
  },
  {
    'slug': 'murf-ai',
    'lang': 'en',
    'name': 'Murf AI',
    'url': 'https://murf.ai',
    'domain': 'murf.ai',
    'category': 'voice',
    'badge': 'freemium',
    'users': '1M+',
    'best_for': 'Professional AI voiceovers for e-learning, explainer videos, and presentations',
    'description': 'AI voice generator with 200+ voices in 35+ languages, optimized for e-learning, explainer videos, and corporate presentations. 1M+ users. Free 10min; Creator $19/mo; Business $66/mo.',
    'description_long': "Murf AI is a text-to-speech and voiceover platform with over 200 AI voices across 35+ languages, purpose-built for e-learning, explainer videos, corporate presentations, and marketing content. Unlike general text-to-speech tools, Murf is designed specifically around the voiceover production workflow — with a built-in editor that syncs audio with video, timing controls, and the ability to emphasize specific words and adjust pacing.\n\nThe platform's strength is professional-grade voice output suitable for business communications without the uncanny valley effect of earlier AI voice technology. Murf AI voices support multiple accents within languages, style controls (conversational, professional, excited), pitch adjustment, and speed control — providing the range needed to match different content tones.\n\nKey capabilities include 200+ AI voices across 35+ languages, style and emotion controls, pitch and speed adjustment, word-level emphasis, built-in video editor for syncing voiceover to slides and video, voice cloning (Business+), collaboration features, and API for integration.\n\nPricing: Free plan provides 10 minutes of voice generation per month with watermarked audio — sufficient for testing only. Creator at $19 per month provides 2 hours per month, commercial rights, and all 200+ voices. Business at $66 per month provides 4 hours per month, voice cloning, priority support, and team collaboration.\n\nLimitations: The 10-minute free tier is very limited — not practical for evaluating production quality. Creator's 2-hour monthly limit requires careful management for regular voiceover production. Voice cloning requires the Business tier at $66/month.\n\nBest suited for instructional designers, e-learning content creators, marketing teams, and YouTubers who need professional voiceovers without hiring voice talent — particularly for regular ongoing content production.",
    'pros': ['200+ voices in 35+ languages with style, pitch, and emotion controls', 'Built-in video editor syncs voiceover to slides and video clips', 'Purpose-built for e-learning and explainer video workflows', '1M+ users with strong adoption in corporate training and marketing', 'Creator plan at $19/mo provides commercial rights and full voice library'],
    'cons': ['Free tier only 10 minutes/month — barely sufficient for meaningful testing', 'Creator 2 hours/month requires careful management for active production', 'Voice cloning locked behind Business plan at $66/month', 'Higher price than Play.ht for similar individual voiceover use cases'],
    'rating': None,
    'also_consider': ['elevenlabs', 'playht', 'descript'],
    'published': True,
  },
  {
    'slug': 'koyfin',
    'lang': 'en',
    'name': 'Koyfin',
    'url': 'https://koyfin.com',
    'domain': 'koyfin.com',
    'category': 'business-investment',
    'badge': 'freemium',
    'users': '500K+',
    'best_for': 'Bloomberg-alternative financial terminal for retail and professional investors',
    'description': 'Professional financial data terminal at a fraction of Bloomberg\'s cost. Real-time data, economic indicators, earnings transcripts, and AI analysis for 90K+ securities. Free; Plus $39/mo; Pro $79/mo.',
    'description_long': "Koyfin is a professional financial data and analytics platform positioned as a Bloomberg Terminal alternative for retail investors, RIAs, and independent research professionals. Where Bloomberg charges $24,000 per year per terminal, Koyfin provides comparable financial data coverage — market data, fundamentals, earnings transcripts, economic indicators, and portfolio analytics — at a fraction of the cost.\n\nThe platform covers 90,000+ global securities including stocks, ETFs, bonds, mutual funds, and economic data. Koyfin dashboards replicate Bloomberg's customizable workspace model — users build personalized layouts with the data widgets they use most frequently. AI features added in 2025 include AI earnings call summaries, natural language financial queries, and AI-generated company summaries.\n\nKey capabilities include real-time and historical market data for 90K+ securities, customizable dashboard with Bloomberg-style widgets, fundamental data (financials, ratios, estimates), earnings transcripts with AI summaries, economic indicators database, watchlist and portfolio tracking, screeners, AI natural language queries, and export to Excel.\n\nPricing: Free plan provides basic market data and limited functionality. Plus at $39 per month provides expanded data access, custom dashboards, and AI features. Pro at $79 per month provides the full platform including advanced screening, full transcript library, and priority support. Enterprise and team pricing is custom.\n\nLimitations: While significantly cheaper than Bloomberg, Koyfin's data depth and real-time tick-level data still trails Bloomberg for professional trading use. The platform is primarily US-focused — international market coverage is less comprehensive. AI features are newer and still maturing.\n\nBest suited for retail investors, independent research analysts, RIAs, and finance professionals who need professional-grade financial data and analysis tools without the Bloomberg price tag.",
    'pros': ['Professional Bloomberg-alternative at 95% lower cost ($39-79/mo vs $24K/yr)', '90K+ securities coverage with real-time data, fundamentals, and earnings transcripts', 'AI earnings call summaries save hours of transcript reading', 'Customizable Bloomberg-style dashboards with widgets and layouts', 'Export to Excel for further financial modeling'],
    'cons': ['Real-time tick data and depth trails Bloomberg for professional trading', 'International market coverage less comprehensive than US equities', 'AI features newer and still maturing relative to core data platform', 'Free plan limited — meaningful use requires Plus ($39/mo) or Pro ($79/mo)'],
    'rating': None,
    'also_consider': ['tradingview', 'finchat', 'tickeron'],
    'published': True,
  },
]

def upsert(row):
    data = json.dumps([row]).encode()
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?on_conflict=slug,lang',
        data=data, method='POST',
        headers={**HDRS, 'Content-Type': 'application/json', 'Prefer': 'resolution=merge-duplicates,return=minimal'}
    )
    with urllib.request.urlopen(req) as r:
        return r.status

print(f'Inserting {len(NEW_TOOLS)} new tools...')
for tool in NEW_TOOLS:
    status = upsert(tool)
    print(f'  {tool["slug"]}: HTTP {status}')

print('Done.')
