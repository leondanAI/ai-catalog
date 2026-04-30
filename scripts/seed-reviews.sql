-- Seed reviews for popular tools
-- Run in Supabase SQL Editor

INSERT INTO comments (tool_slug, author_name, author_email, content, rating, approved, created_at) VALUES

-- ChatGPT
('chatgpt', 'Alex Morrison', null, 'I use ChatGPT every single day for work. It helps me draft emails, write code snippets, and brainstorm ideas. The GPT-4o model is impressively fast and accurate. Only downside is that the free tier runs out quickly if you use it heavily.', 5, true, NOW() - INTERVAL '12 days'),
('chatgpt', 'Maria Santos', null, 'Switched from Google search to ChatGPT for most of my research. The quality of answers is on another level. I especially love the custom GPTs — found one for Excel formulas that saved me hours every week.', 5, true, NOW() - INTERVAL '8 days'),
('chatgpt', 'James Park', null, 'Great tool overall but I wish the free version had more daily messages. Had to upgrade to Plus and honestly it was worth it. The image generation with DALL·E 3 is a nice bonus too.', 4, true, NOW() - INTERVAL '5 days'),
('chatgpt', 'Lena Fischer', null, 'It hallucinates sometimes which can be frustrating for factual research. Always double-check important info. That said, for writing and coding tasks it is unbeatable.', 3, true, NOW() - INTERVAL '2 days'),

-- Claude
('claude', 'David Chen', null, 'Claude is my go-to for long documents. I fed it a 200-page PDF and it summarized it perfectly and answered specific questions about it. The context window is insane compared to other models.', 5, true, NOW() - INTERVAL '15 days'),
('claude', 'Sophie Turner', null, 'I prefer Claude over ChatGPT for writing tasks. The tone feels more natural and less robotic. It also refuses fewer requests which I appreciate when working on creative fiction.', 5, true, NOW() - INTERVAL '10 days'),
('claude', 'Rahul Mehta', null, 'Excellent for code review and refactoring. It explains WHY it made changes, not just what. Really helpful for learning. The free tier is generous enough for casual use.', 4, true, NOW() - INTERVAL '6 days'),

-- Midjourney
('midjourney', 'Emma Wilson', null, 'The image quality blows everything else out of the water. I use it for all my design mockups and client presentations. The v6 model is absolutely stunning. Worth every penny of the subscription.', 5, true, NOW() - INTERVAL '20 days'),
('midjourney', 'Carlos Rivera', null, 'Takes some practice to get good at prompting but once you figure it out the results are incredible. I have generated hundreds of images and it never stops impressing me.', 5, true, NOW() - INTERVAL '11 days'),
('midjourney', 'Nina Kowalski', null, 'Great quality but I wish it had a proper web editor and not just Discord. The workflow feels outdated compared to newer tools. Still the best for photorealism though.', 4, true, NOW() - INTERVAL '4 days'),

-- Cursor
('cursor', 'Tom Bradley', null, 'Cursor completely changed how I code. Having AI that understands my entire codebase context is a game changer. Tab autocomplete alone saves me probably 2 hours a day.', 5, true, NOW() - INTERVAL '18 days'),
('cursor', 'Yuki Tanaka', null, 'I was skeptical at first but after one week I could not go back to VS Code. The Composer feature for multi-file edits is incredible. Claude 3.5 Sonnet integration is top notch.', 5, true, NOW() - INTERVAL '9 days'),
('cursor', 'Oliver Smith', null, 'Great for everyday coding tasks. Sometimes the AI suggestions go off track for complex architectural decisions but for boilerplate and refactoring it is excellent.', 4, true, NOW() - INTERVAL '3 days'),

-- GitHub Copilot
('github-copilot', 'Priya Sharma', null, 'Been using Copilot for 2 years now. It pays for itself in the first hour of work each month. The inline suggestions feel natural and it has learned my coding style over time.', 5, true, NOW() - INTERVAL '22 days'),
('github-copilot', 'Ben Walker', null, 'Good tool but Cursor has mostly replaced it for me. Copilot works best if you are happy staying in VS Code and do not need multi-file context. For single file work it is excellent.', 4, true, NOW() - INTERVAL '7 days'),
('github-copilot', 'Anna Petrov', null, 'The chat feature in VS Code is underrated. I ask it to explain legacy code and it does a brilliant job. The $10/month price is very fair for professional developers.', 4, true, NOW() - INTERVAL '1 day'),

-- Gemini
('gemini', 'Michael Lee', null, 'Gemini Deep Research is incredible for competitive analysis. It searches the web, synthesizes findings and produces a proper report. Saved me 4 hours on a recent project.', 5, true, NOW() - INTERVAL '14 days'),
('gemini', 'Sara Johnson', null, 'Love that it is connected to Google services. It reads my Drive documents and Gmail threads directly. The integration with Workspace is something ChatGPT cannot match.', 5, true, NOW() - INTERVAL '8 days'),
('gemini', 'Lucas Martin', null, 'Still trails ChatGPT and Claude for pure conversational quality in my experience. But for anything Google-connected it is the obvious choice. Gem features are very useful.', 3, true, NOW() - INTERVAL '3 days'),

-- Perplexity
('perplexity', 'Hannah White', null, 'I replaced Google with Perplexity for most searches. It gives direct answers with sources I can verify. The pro version with Spaces for organizing research is excellent for students.', 5, true, NOW() - INTERVAL '16 days'),
('perplexity', 'Ahmed Hassan', null, 'Best AI for getting up-to-date information. Unlike ChatGPT it searches the web in real time and cites every source. I use it daily for news and market research.', 5, true, NOW() - INTERVAL '9 days'),
('perplexity', 'Claire Dubois', null, 'Very useful but I find the Pro features a bit overpriced at $20/month. The free tier is actually quite powerful. Good for quick research but I still use Claude for deep work.', 3, true, NOW() - INTERVAL '2 days'),

-- ElevenLabs
('elevenlabs', 'Marco Rossi', null, 'The voice cloning is uncanny. I cloned my own voice with a 2-minute sample and it sounds exactly like me. Using it for my YouTube channel intro and nobody noticed it was AI.', 5, true, NOW() - INTERVAL '19 days'),
('elevenlabs', 'Jessica Moore', null, 'Best text-to-speech on the market by a wide margin. I use it for my podcast ads and the quality is broadcast ready. The voice library has every accent and tone you could need.', 5, true, NOW() - INTERVAL '10 days'),
('elevenlabs', 'Kevin Zhang', null, 'Impressive technology but credits run out fast on lower plans if you are producing long audio content. Quality is top tier though. Worth paying for if audio is core to your work.', 4, true, NOW() - INTERVAL '5 days'),

-- Notion AI
('notion-ai', 'Laura Adams', null, 'Having AI built right into my notes app is so convenient. I use it to summarize meeting notes, translate content and write first drafts. The Q&A feature over my entire workspace is brilliant.', 5, true, NOW() - INTERVAL '17 days'),
('notion-ai', 'Stefan Müller', null, 'Good for basic writing assistance but not as powerful as dedicated AI tools. Works well enough for day-to-day note enhancement. The price add-on feels a bit steep on top of the Notion subscription.', 3, true, NOW() - INTERVAL '6 days'),
('notion-ai', 'Isabelle Laurent', null, 'I use Notion AI to clean up rough notes after meetings. One click and my messy bullet points become a proper action list. Saves me 20 minutes after every meeting.', 4, true, NOW() - INTERVAL '2 days'),

-- Grammarly
('grammarly', 'Robert Taylor', null, 'Grammarly is always on in my browser. It catches errors I would never notice and the tone suggestions have improved my professional emails significantly. The Premium suggestions are worth it.', 5, true, NOW() - INTERVAL '25 days'),
('grammarly', 'Diana Popescu', null, 'Essential for non-native English speakers like me. It not only fixes grammar but explains why something is wrong. My written English has noticeably improved since I started using it.', 5, true, NOW() - INTERVAL '12 days'),
('grammarly', 'Chris Anderson', null, 'Does the job but feels expensive for what it offers now that ChatGPT can do similar editing. Still unbeatable for passive always-on correction while you type.', 3, true, NOW() - INTERVAL '4 days'),

-- Runway
('runway', 'Isabella Green', null, 'Gen-3 Alpha is mind blowing. I generated a 10-second product video for a client in 20 minutes that would have taken a videographer a full day. The quality is not perfect but for social content it is incredible.', 5, true, NOW() - INTERVAL '13 days'),
('runway', 'Patrick Nguyen', null, 'The video editing AI tools like background removal and inpainting are genuinely useful for production work. I use it to clean up footage and the results are professional grade.', 4, true, NOW() - INTERVAL '7 days'),
('runway', 'Mia Johansson', null, 'Promising but credits are very expensive and videos are still limited to 10 seconds. For the price I expected more. Will re-evaluate when Gen-4 drops.', 3, true, NOW() - INTERVAL '1 day'),

-- DeepSeek
('deepseek', 'Victor Kozlov', null, 'DeepSeek R1 is genuinely on par with o1 for math and coding tasks and it is free. The chain-of-thought reasoning is visible which I find really useful for learning and debugging.', 5, true, NOW() - INTERVAL '21 days'),
('deepseek', 'Amy Chen', null, 'Incredible value — completely free and the model quality rivals the best paid alternatives. I use it for all my data analysis and Python scripting. No reason to pay for ChatGPT Plus if coding is your main use.', 5, true, NOW() - INTERVAL '11 days'),
('deepseek', 'Florian Bauer', null, 'Good model but I have some concerns about data privacy since it is a Chinese company. Great for non-sensitive tasks. The API pricing is extremely competitive for developers.', 3, true, NOW() - INTERVAL '3 days');
