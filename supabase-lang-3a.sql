-- Translations: Chinese (zh), Japanese (ja), Korean (ko)

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

-- ═══════════════════════════════════════════════════════
-- CHINESE (zh)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','zh','models','模型','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 在SWE-bench上以87.6%创下新纪录',
'Anthropic的Claude Opus 4.7在SWE-bench Verified上以87.6%创下新纪录，是所有公开可用模型中的最高分。每百万token定价$5/$25，标志着智能体软件工程能力的质的飞跃。',
'<p>Anthropic最新旗舰模型<strong>Claude Opus 4.7</strong>在SWE-bench Verified上创下行业纪录，得分<strong>87.6%</strong>，超越所有已发布的公开可用模型。</p>
<h2>SWE-bench测什么</h2>
<p>SWE-bench Verified测试AI能否解决流行开源仓库中的真实GitHub问题。每项任务要求模型阅读bug报告、理解代码库、编写修复方案并通过现有测试，全程无需人工指导。</p>
<h2>定价与可用性</h2>
<p>Claude Opus 4.7定价为<strong>每百万输入token $5，每百万输出token $25</strong>。可通过Anthropic API和Claude.ai Pro使用。</p>
<h3>对开发者意味着什么</h3>
<p>87.6%的得分意味着模型可以可靠地自动修复大多数真实世界的bug，这一能力在18个月前还被认为遥不可及。</p>',
true),

('gpt-54-three-variants-1m-context','zh','models','模型','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4推出三个版本，支持100万token上下文',
'OpenAI发布了GPT-5.4的Standard、Thinking和Pro三个版本。三者均支持105万token的上下文窗口——OpenAI有史以来最大的商业上下文。模型动态获取工具规范，而非预先加载所有定义。',
'<p>OpenAI推出<strong>GPT-5.4</strong>，分为Standard、Thinking和Pro三个版本，均采用相同架构，支持<strong>105万token的上下文窗口</strong>。</p>
<h2>三个版本说明</h2>
<p><strong>Standard</strong>针对速度和成本优化；<strong>Thinking</strong>为复杂问题增加扩展推理；<strong>Pro</strong>结合最强能力与最大上下文，适用于最苛刻的场景。</p>
<h2>动态工具获取</h2>
<p>GPT-5.4不再在对话开始时加载所有工具定义，而是按需获取所需规范，减少prompt冗余，提升复杂智能体工作流中的响应质量。</p>',
true),

('apple-rebuilds-siri-google-gemini','zh','business','商业','#f5a623','9to5Mac','2026-04-16',
'苹果基于Google Gemini通过私有云重建Siri',
'苹果宣布全面重建Siri，采用Google的Gemini模型，运行于苹果的Private Cloud Compute基础设施。新版Siri首次在设备端处理多步骤任务。',
'<p>苹果宣布对Siri进行全面重建，底层采用<strong>Google的Gemini模型</strong>，运行于苹果的Private Cloud Compute基础设施。这是Siri自2011年发布以来最重大的变化。</p>
<h2>Private Cloud Compute</h2>
<p>新版Siri在云端处理复杂查询，同时保持苹果的隐私保障。该架构确保即使是苹果员工也无法访问用户数据。</p>
<h2>新Siri能做什么</h2>
<p>重构后的Siri首次<strong>在设备端处理多步骤任务</strong>，无需将数据发送至外部服务器即可跨多个应用执行操作。新版Siri预计随iOS 20推出。</p>',
true),

('stanford-ai-index-2026','zh','research','研究','#4aaef5','Stanford HAI','2026-04-15',
'斯坦福AI指数2026：AI普及速度超过PC或互联网',
'斯坦福年度AI指数显示，截至2026年3月，Anthropic在综合模型排名中领先，位居xAI、Google和OpenAI之前。人们采用AI的速度比当年采用PC或互联网更快。',
'<p>斯坦福大学以人为本AI研究所发布<strong>AI指数2026</strong>，这是对人工智能进展与社会影响最全面的数据驱动报告。</p>
<h2>Anthropic领跑综合排名</h2>
<p><strong>Anthropic</strong>首次在斯坦福综合模型性能排名中位居榜首，微幅领先xAI、Google和OpenAI。</p>
<h2>普及速度超越历史上所有技术</h2>
<p>AI工具达到<strong>5亿常规用户的速度超过了PC、互联网和智能手机</strong>。截至2026年初，67%的知识工作者每周至少使用一次AI工具，AI辅助代码占公共仓库所有新代码的35%。</p>',
true),

('pwc-top-companies-ai-economic-gains','zh','research','研究','#4aaef5','PwC','2026-04-14',
'普华永道：顶尖20%企业获取75%的AI经济收益',
'普华永道2026年AI绩效研究发现，少数专注于增长的企业正大幅领先。报告警告，大多数企业仍处于实验阶段，正在错失复利回报。',
'<p>普华永道2026年AI绩效研究基于22个行业5000家企业的数据，揭示AI领导者与市场其余部分之间日益扩大的差距。</p>
<h2>20/75分化</h2>
<p>顶尖20%的企业获取了<strong>AI创造的75%经济价值</strong>。关键差异不在于技术投入，而在于战略取向：领先企业用AI<strong>创造新收入来源</strong>，而非仅降低成本。</p>
<h3>实验模式的危险</h3>
<p>普华永道警告，60%的企业仍处于实验模式，运行试点却未能扩展至生产。这些企业不仅错失复利回报，还在领先企业构建数据优势的过程中持续落后。</p>',
true),

('openai-acquires-tbpn','zh','business','商业','#f5a623','The Verge','2026-04-14',
'OpenAI收购硅谷媒体节目TBPN',
'OpenAI宣布收购TBPN（科技商业编程网络）——一档在硅谷广受欢迎的每日科技与商业直播节目。这是OpenAI首次收购媒体公司。',
'<p>OpenAI收购了<strong>TBPN（技术商业编程网络）</strong>，这是一档关于科技、AI和商业的每日直播节目，已成为硅谷收视率最高的节目之一。</p>
<h2>OpenAI首次媒体收购</h2>
<p>这是<strong>OpenAI首次收购媒体公司</strong>，标志着其战略扩张超越AI模型开发。OpenAI表示TBPN将继续独立运营，不会对内容进行编辑干预。财务条款未披露。</p>',
true),

('anthropic-confirms-claude-mythos','zh','models','模型','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic确认Claude Mythos存在，但不会公开发布',
'Anthropic正式确认Claude Mythos的存在，称其为公司有史以来最强大的模型，但不会公开发布。访问权限通过Glasswing项目限制在约50个合作组织。',
'<p>Anthropic正式确认<strong>Claude Mythos</strong>的存在，将其描述为公司有史以来最强大的模型，并无公开发布计划。</p>
<h2>Glasswing项目</h2>
<p>Claude Mythos的访问权限通过<strong>Glasswing项目</strong>管理，这是一个面向约50个合作组织的限制性计划，主要聚焦于高级网络安全研究和超越公开模型能力的复杂多步推理任务。</p>
<h3>已知能力</h3>
<p>Anthropic未发布Mythos的基准测试结果。合作组织描述它能够在复杂的多天任务中持续自主运作，一个网络安全合作伙伴称其能够在极少人工指导下进行端到端渗透测试。</p>',
true),

('openai-25b-revenue-ipo-2026','zh','business','商业','#f5a623','Bloomberg','2026-04-13',
'OpenAI年化营收突破250亿美元，谋划2026年IPO',
'据知情人士透露，OpenAI年化营收已突破250亿美元，并正在为可能于2026年底进行的IPO做前期准备。Anthropic紧随其后，年化营收接近190亿美元。',
'<p>OpenAI年化营收已突破<strong>250亿美元</strong>，并正在为可能于2026年底进行的首次公开募股做前期准备。</p>
<h2>营收构成</h2>
<p>大部分营收来自ChatGPT订阅和API使用。企业合同是增长最快的板块，占总营收约40%。</p>
<h2>Anthropic紧随其后</h2>
<p><strong>Anthropic年化营收接近190亿美元</strong>，得益于Claude的强劲企业需求及与亚马逊云科技Bedrock平台的深度整合。OpenAI于2026年初完成重组，转型为更传统的公益公司结构，扫清了IPO的关键障碍。</p>',
true),

('meta-llama-4-scout-10m-context','zh','models','模型','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout：MoE架构支持1000万token上下文',
'Meta发布Llama 4 Scout和Maverick——首批采用混合专家架构的Llama模型。Scout拥有170亿活跃参数（16个专家，共1090亿参数）和1000万token上下文窗口，支持商业使用。',
'<p>Meta发布<strong>Llama 4 Scout和Maverick</strong>——Llama系列首批采用<strong>混合专家（MoE）架构</strong>的模型，每次查询仅激活部分参数，大幅提升效率。</p>
<h2>Scout：为长上下文而生</h2>
<p>Llama 4 Scout拥有<strong>170亿活跃参数</strong>（16个专家，共1090亿参数）和<strong>1000万token上下文窗口</strong>——所有开放模型中最大的，可在单次处理中处理完整代码库。</p>
<h2>商业使用</h2>
<p>两款模型均可在Meta更新的Llama许可证下用于商业用途。MoE架构相比同等质量的稠密模型可将推理成本降低约60%。</p>',
true),

('google-gemma-4-31b-open-model','zh','models','模型','#7c6af7','Google Blog','2026-04-10',
'Google发布Gemma 4：310亿参数开放模型全球排名第三',
'Google发布Gemma 4，提供从23亿到310亿参数的四个版本。310亿稠密模型在Arena AI开放模型排行榜中位列全球第三，是Google迄今发布的最强开源模型。',
'<p>Google发布<strong>Gemma 4</strong>，其开放权重模型系列的最新一代，提供从<strong>23亿到310亿参数</strong>的四个版本。</p>
<h2>Gemma 4 31B：全球第三</h2>
<p>旗舰模型<strong>Gemma 4 31B Dense在Arena AI开放模型排行榜中位列全球第三</strong>，是Google有史以来发布的最强开源模型。14B和31B版本首次在Gemma系列中加入原生视觉能力。</p>
<p>所有Gemma 4权重均可在Hugging Face和Google AI Studio下载，采用允许商业使用的开放许可证。</p>',
true),

('eu-ai-act-full-enforcement','zh','regulation','监管','#f56565','Wired','2026-04-09',
'欧盟AI法案全面执行：主要提供商发布合规文件',
'欧盟AI法案于2026年3月全面生效，要求在欧盟部署的所有AI系统满足透明度、安全性和风险分类要求。OpenAI、Anthropic和Google均已发布GPAI合规文件。',
'<p>欧盟AI法案于<strong>2026年3月全面生效</strong>，适用于在欧盟境内部署的所有AI系统，无论开发者位于何处。</p>
<h2>法案要求</h2>
<p>法案建立基于风险的框架。<strong>高风险系统</strong>——用于招聘、信用评分、医疗、执法和关键基础设施的系统——必须完成正式合规评估，在欧盟中央数据库注册，并实施持续监控。</p>
<h3>处罚力度</h3>
<p>违规可处最高<strong>3500万欧元或全球年营业额7%</strong>的罚款，以较高者为准。总部位于布鲁塞尔的欧洲AI办公室已对多家公司展开初步调查。</p>',
true),

('zhipu-glm-51-744b-open-source','zh','models','模型','#7c6af7','Zhipu AI Blog','2026-04-08',
'智谱AI开源GLM-5.1：7440亿参数MoE模型',
'中国AI实验室智谱AI以MIT许可证发布GLM-5.1——一个7440亿参数的混合专家模型，每次前向传播激活400亿参数，支持20万token上下文。完全开放的发布对闭源竞争对手形成重大压力。',
'<p>中国AI实验室智谱AI以MIT许可证发布<strong>GLM-5.1</strong>——这是最宽松的开源许可证之一，允许任何用途包括无限制的商业部署。</p>
<h2>规模与架构</h2>
<p>GLM-5.1是一个<strong>7440亿参数的混合专家模型</strong>，每次前向传播激活400亿参数，支持<strong>20万token上下文窗口</strong>。</p>
<h3>为何意义重大</h3>
<p>MIT许可证对模型的使用、修改或再分发不设任何限制。此前的大型开放模型（包括Meta的Llama系列）均带有各种使用限制。GLM-5.1是迄今为止最自由可用的前沿规模模型。</p>',
true),

-- ═══════════════════════════════════════════════════════
-- JAPANESE (ja)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','ja','models','モデル','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7がSWE-benchで87.6%の新記録を樹立',
'AnthropicのClaude Opus 4.7がSWE-bench Verifiedで87.6%の新記録を達成——公開モデル史上最高スコア。100万トークンあたり$5/$25の価格で、エージェント型ソフトウェアエンジニアリングの質的変化を示す。',
'<p>Anthropicの最新フラグシップモデル<strong>Claude Opus 4.7</strong>がSWE-bench Verifiedで<strong>87.6%</strong>という業界記録を樹立し、公開されているすべてのモデルの過去最高スコアを上回りました。</p>
<h2>SWE-benchとは</h2>
<p>SWE-bench Verifiedは、AIが人気オープンソースリポジトリの実際のGitHub Issueを解決できるかテストします。各タスクでモデルはバグレポートを読み、コードベースを理解し、修正を書き、既存のテストをパスする必要があります——人間のガイダンスなしに。</p>
<h2>価格と提供状況</h2>
<p>Claude Opus 4.7の価格は<strong>入力100万トークンあたり$5、出力100万トークンあたり$25</strong>。Anthropic APIとClaude.ai Proで利用可能。</p>
<h3>開発者への意味</h3>
<p>87.6%という数字は、モデルが人間の介入なしに実世界のバグの大半を確実に修正できることを意味します——わずか18ヶ月前には不可能とされていた能力です。</p>',
true),

('gpt-54-three-variants-1m-context','ja','models','モデル','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4が3つのバリアントと100万トークンコンテキストで登場',
'OpenAIがGPT-5.4をStandard、Thinking、Proの3バリアントでリリース。すべて105万トークンのコンテキストウィンドウを共有——OpenAI史上最大の商業提供。ツール仕様を動的に取得する新設計。',
'<p>OpenAIが<strong>GPT-5.4</strong>をStandard、Thinking、Proの3バリアントでリリースしました。すべてが同一アーキテクチャと<strong>105万トークンのコンテキストウィンドウ</strong>を共有しています。</p>
<h2>3つのバリアント</h2>
<p><strong>Standard</strong>は速度とコストを重視。<strong>Thinking</strong>は複雑な問題向けに拡張推論を追加。<strong>Pro</strong>は最大の能力と最大のコンテキストを組み合わせます。</p>
<h2>動的ツール取得</h2>
<p>すべてのツール定義を最初に読み込む代わりに、モデルは必要に応じて仕様を取得します。プロンプトのサイズを削減し、複雑なエージェントワークフローでの応答品質を向上させます。</p>',
true),

('apple-rebuilds-siri-google-gemini','ja','business','ビジネス','#f5a623','9to5Mac','2026-04-16',
'AppleがプライベートクラウドでGoogle GeminiベースのSiriを再構築',
'AppleがAppleのPrivate Cloud Compute上でGoogleのGeminiモデルを動かす形でSiriを全面再構築すると発表。新しいSiriはデバイス上で初めてマルチステップタスクを処理。',
'<p>Appleは<strong>GoogleのGeminiモデル</strong>をAppleのPrivate Cloud Compute基盤上で動かすSiriの完全再構築を発表しました。2011年の登場以来、最も大きなSiriの変更です。</p>
<h2>Private Cloud Compute</h2>
<p>新しいSiriは複雑なクエリをクラウドで処理しながら、Appleのプライバシー保証を維持します。このアーキテクチャはApple社員でさえユーザーデータにアクセスできないことを保証します。</p>
<h2>新しいSiriができること</h2>
<p>再構築されたSiriは<strong>初めてデバイス上でマルチステップタスク</strong>を処理し、外部サーバーにデータを送ることなく複数のアプリを横断してアクションを組み合わせます。iOS 20とともに展開予定。</p>',
true),

('stanford-ai-index-2026','ja','research','リサーチ','#4aaef5','Stanford HAI','2026-04-15',
'スタンフォードAIインデックス2026：AI普及速度がPCやインターネットを超える',
'スタンフォードの年次AIインデックスによると、2026年3月時点でAnthropicが総合モデルランキングを首位で牽引し、xAI、Google、OpenAIが続く。AIの普及速度はPCやインターネットを上回る。',
'<p>スタンフォード大学Human-Centered AI研究所が<strong>AIインデックス2026</strong>を発表しました——AIの進歩、普及、社会的影響を最も包括的にデータで示す報告書です。</p>
<h2>Anthropicが総合ランキング首位</h2>
<p>初めて<strong>Anthropic</strong>がスタンフォードの総合モデル性能ランキングで首位に立ち、xAI、Google、OpenAIをわずかに上回りました。</p>
<h2>あらゆる過去の技術を超える普及速度</h2>
<p>AIツールは<strong>PC、インターネット、スマートフォンよりも速く5億人の定期ユーザー</strong>に達しました。2026年初頭時点で、67%のナレッジワーカーが少なくとも週1回AIツールを利用しています。</p>',
true),

('pwc-top-companies-ai-economic-gains','ja','research','リサーチ','#4aaef5','PwC','2026-04-14',
'PwC：上位20%の企業がAI経済的利益の75%を獲得',
'PwCの2026年AI績評価調査で、成長重視の少数企業が大きくリードしていることが判明。大多数の企業はまだ実験段階にあり、複利リターンを取りこぼしていると警告。',
'<p>22業界5,000社のデータに基づくPwCの2026年AI績調査は、AIリーダーとその他の市場の間で拡大する格差を明らかにしています。</p>
<h2>20/75の分断</h2>
<p>上位20%の企業が<strong>AIが生み出す経済価値の75%</strong>を獲得しています。差別化要因は技術投資額やモデルへのアクセスではなく、戦略的方向性です——リーダー企業はAIを活用して<strong>新たな収益源を創出</strong>しています。</p>
<h3>実験モードの危険性</h3>
<p>60%の企業がまだ実験モードにあり、本番環境へスケールせずにパイロットを実施しています。これらの企業は複利リターンを逃すだけでなく、リーダーがデータ優位性を構築する中でさらに遅れをとっています。</p>',
true),

('openai-acquires-tbpn','ja','business','ビジネス','#f5a623','The Verge','2026-04-14',
'OpenAIがシリコンバレーのメディアショーTBPNを買収',
'OpenAIがシリコンバレーでカルト的人気を誇る毎日生配信の技術・ビジネスショーTBPN（テクノロジー・ビジネス・プログラミング・ネットワーク）を買収。OpenAI初のメディア企業買収。',
'<p>OpenAIが<strong>TBPN（テクノロジー・ビジネス・プログラミング・ネットワーク）</strong>を買収しました。シリコンバレーで最も視聴されているテクノロジー・AI・ビジネスの毎日生配信番組です。</p>
<h2>OpenAI初のメディア買収</h2>
<p>これは<strong>OpenAI初のメディア企業買収</strong>で、AIモデル開発を超えた戦略的拡張を示しています。OpenAIはTBPNが既存チームで独立運営を継続すると述べています。財務条件は非公開。</p>',
true),

('anthropic-confirms-claude-mythos','ja','models','モデル','#7c6af7','Anthropic Blog','2026-04-13',
'AnthropicがClaude Mythosの存在を確認——公開リリースの予定なし',
'Anthropicが、同社史上最も強力なモデルと説明するClaude Mythosの存在を公式確認。公開リリースの予定はなく、Glasswingプロジェクトを通じた約50のパートナー組織に限定。',
'<p>Anthropicは<strong>Claude Mythos</strong>の存在を公式確認しました——同社が構築した中で最も強力なモデルと説明されていますが、公開リリースの計画はありません。</p>
<h2>Glasswingプロジェクト</h2>
<p>Claude Mythosへのアクセスは<strong>Glasswingプロジェクト</strong>を通じて管理されており、高度なサイバーセキュリティ研究と複雑な多段階推論タスクに焦点を当てた約50のパートナー組織に限定されています。</p>
<h3>既知の能力</h3>
<p>Anthropicはベンチマーク結果を公開していません。パートナー組織は、複雑な数日間にわたるタスクで持続的な自律運用が可能と説明しており、あるサイバーセキュリティパートナーは最小限の人間の指示でエンドツーエンドのペネトレーションテストが実施できると述べています。</p>',
true),

('openai-25b-revenue-ipo-2026','ja','business','ビジネス','#f5a623','Bloomberg','2026-04-13',
'OpenAIが年間250億ドルの収益を突破、2026年のIPOを視野に',
'OpenAIの年間換算収益が250億ドルを突破し、2026年後半にも想定されるIPOに向けた初期準備が進んでいると報じられる。Anthropicも190億ドルに迫り、急追。',
'<p>OpenAIの年間換算収益が<strong>250億ドルを突破</strong>し、2026年後半にも実施される可能性がある株式上場に向けた初期準備を進めています。</p>
<h2>収益の内訳</h2>
<p>収益の大半はChatGPTのサブスクリプションとAPI利用から来ています。エンタープライズ契約は最も成長が速いセグメントで、総収益の約40%を占めています。</p>
<h2>Anthropicが急追</h2>
<p><strong>Anthropicは190億ドルに迫る</strong>年間換算収益を記録しています。OpenAIは2026年初頭に再編を完了し、より一般的な公益法人へ転換することでIPOの主要障壁を取り除きました。</p>',
true),

('meta-llama-4-scout-10m-context','ja','models','モデル','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout：MoEアーキテクチャで1000万トークンコンテキスト',
'MetaがLlama 4 ScoutとMaverickをリリース——MixEdture-of-Expertsアーキテクチャを採用したLlama初のモデル。Scoutは16のエキスパートで170億の活性パラメータ（合計1090億）と1000万トークンのコンテキストウィンドウを持つ。',
'<p>MetaがLlama 4 Scout</strong>とMaverickをリリースしました——<strong>Mixture-of-Experts（MoE）アーキテクチャ</strong>を採用したLlamaファミリー初のモデルで、クエリごとにパラメータのサブセットのみを起動します。</p>
<h2>Scout：長いコンテキスト向けに設計</h2>
<p>Llama 4 Scoutは16のエキスパートに<strong>170億の活性パラメータ</strong>（合計1090億）と<strong>1000万トークンのコンテキストウィンドウ</strong>を備え、コードベース全体を一度に処理できます。</p>
<h2>商用利用</h2>
<p>両モデルはMetaの更新されたLlamaライセンスの下で商用利用が可能。MoEアーキテクチャにより、同等品質の密なモデルと比較して推論コストを約60%削減します。</p>',
true),

('google-gemma-4-31b-open-model','ja','models','モデル','#7c6af7','Google Blog','2026-04-10',
'GoogleがGemma 4をリリース：310億パラメータのオープンモデルが世界3位に',
'GoogleがGemma 4を23億から310億パラメータの4バリアントでリリース。310億Denseモデルはオープンモデル中Arena AIで世界3位にランクイン——Google史上最強のオープンソースモデル。',
'<p>Googleが<strong>Gemma 4</strong>をリリースしました——オープンウェイトモデルファミリーの最新世代で、<strong>23億から310億パラメータ</strong>の4つのバリアントを提供します。</p>
<h2>Gemma 4 31B：世界3位</h2>
<p>フラグシップの<strong>Gemma 4 31B DenseはArena AIのオープンモデルランキングで世界3位</strong>——Googleがこれまでリリースした中で最強のオープンモデルです。14Bと31Bバリアントは、Gemmaシリーズ初のネイティブ視覚機能を含んでいます。</p>
<p>すべてのGemma 4のウェイトはHugging FaceとGoogle AI Studioで商用利用可能なオープンライセンスの下で利用できます。</p>',
true),

('eu-ai-act-full-enforcement','ja','regulation','規制','#f56565','Wired','2026-04-09',
'EU AI法が完全施行：主要プロバイダーがコンプライアンス文書を公開',
'EU AI法が2026年3月に完全施行され、EUで展開されるすべてのAIシステムに透明性、安全性、リスク分類要件への準拠が義務付けられた。OpenAI、Anthropic、GoogleがGPAIコンプライアンス文書を公開。',
'<p>EU AI法が<strong>2026年3月に完全施行</strong>され、開発者の所在地にかかわらず、EU内で展開されるすべてのAIシステムに適用されます。</p>
<h2>法律が求めること</h2>
<p>法律はリスクベースのフレームワークを確立しています。採用、信用スコアリング、医療、法執行などで使用される<strong>高リスクシステム</strong>は、正式な適合性評価を完了し、EU中央データベースへの登録と継続的なモニタリングの実施が必要です。</p>
<h3>制裁</h3>
<p>違反には最大<strong>3,500万ユーロまたは世界年間売上高の7%</strong>の罰金が科される可能性があります。ブリュッセルに本拠を置く欧州AI局はすでに複数の企業に対する予備調査を開始しています。</p>',
true),

('zhipu-glm-51-744b-open-source','ja','models','モデル','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AIがGLM-5.1をオープンソース公開：7440億パラメータのMoEモデル',
'中国のAIラボZhipu AIが7440億パラメータのMixture-of-ExpertsモデルGLM-5.1をMITライセンスでリリース。フォワードパスごとに400億パラメータを活性化、20万トークンのコンテキストウィンドウ対応。',
'<p>中国のAIラボZhipu AIが<strong>GLM-5.1</strong>をMITライセンス——最も寛容なオープンソースライセンスの一つ——でリリースし、制限なしの商用展開を含むあらゆる用途に無料で利用可能にしました。</p>
<h2>規模とアーキテクチャ</h2>
<p>GLM-5.1は<strong>7440億パラメータのMixture-of-Expertsモデル</strong>で、フォワードパスごとに400億の活性パラメータを持ち、<strong>20万トークンのコンテキストウィンドウ</strong>をサポートします。</p>
<h3>なぜ重要か</h3>
<p>MITライセンスはモデルの使用、改変、再配布に一切の制限を課しません。MetaのLlamaファミリーを含む以前の大型オープンモデルは様々な制限を持つカスタムライセンスを採用しています。GLM-5.1はフロンティアスケールのモデルとして最も自由に利用可能なモデルです。</p>',
true),

-- ═══════════════════════════════════════════════════════
-- KOREAN (ko)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','ko','models','모델','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7, SWE-bench에서 87.6%로 신기록 달성',
'Anthropic의 Claude Opus 4.7이 SWE-bench Verified에서 87.6%를 기록하며 공개 모델 최고 점수를 경신했습니다. 백만 토큰당 $5/$25의 가격으로 에이전틱 소프트웨어 엔지니어링의 질적 도약을 의미합니다.',
'<p>Anthropic의 최신 플래그십 모델 <strong>Claude Opus 4.7</strong>이 SWE-bench Verified에서 <strong>87.6%</strong>를 기록하며 공개 가능한 모든 모델 중 최고 점수를 달성했습니다.</p>
<h2>SWE-bench란</h2>
<p>SWE-bench Verified는 AI가 인기 오픈소스 저장소의 실제 GitHub 이슈를 해결할 수 있는지 테스트합니다. 각 작업에서 모델은 버그 리포트를 읽고, 코드베이스를 이해하며, 수정 사항을 작성하고, 기존 테스트를 통과해야 합니다—인간의 도움 없이.</p>
<h2>가격 및 이용 가능성</h2>
<p>Claude Opus 4.7의 가격은 <strong>입력 백만 토큰당 $5, 출력 백만 토큰당 $25</strong>입니다. Anthropic API와 Claude.ai Pro를 통해 이용 가능합니다.</p>
<h3>개발자에게 의미하는 바</h3>
<p>87.6%라는 수치는 모델이 인간의 개입 없이 대부분의 실제 버그를 안정적으로 수정할 수 있음을 의미합니다—불과 18개월 전만 해도 불가능하다고 여겨졌던 능력입니다.</p>',
true),

('gpt-54-three-variants-1m-context','ko','models','모델','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4, 100만 토큰 컨텍스트로 3가지 버전 출시',
'OpenAI가 GPT-5.4를 Standard, Thinking, Pro 버전으로 출시했습니다. 세 버전 모두 105만 토큰의 컨텍스트 창을 공유합니다—OpenAI 역사상 가장 큰 상업적 컨텍스트.',
'<p>OpenAI가 <strong>GPT-5.4</strong>를 Standard, Thinking, Pro의 세 가지 버전으로 출시했습니다. 세 버전 모두 동일한 아키텍처와 <strong>105만 토큰 컨텍스트 창</strong>을 공유합니다.</p>
<h2>세 가지 버전</h2>
<p><strong>Standard</strong>는 속도와 비용 최적화. <strong>Thinking</strong>은 복잡한 문제를 위한 확장 추론 추가. <strong>Pro</strong>는 최대 역량과 최대 컨텍스트의 결합.</p>
<h2>동적 도구 가져오기</h2>
<p>모든 도구 정의를 미리 로드하는 대신, 작업이 발생할 때만 필요한 사양을 가져옵니다. 프롬프트 부피를 줄이고 복잡한 에이전틱 워크플로에서 응답 품질을 향상시킵니다.</p>',
true),

('apple-rebuilds-siri-google-gemini','ko','business','비즈니스','#f5a623','9to5Mac','2026-04-16',
'Apple, 프라이빗 클라우드를 통해 Google Gemini 기반으로 Siri 재구축',
'Apple이 Apple의 Private Cloud Compute 인프라에서 실행되는 Google의 Gemini 모델을 기반으로 완전히 재구축된 Siri를 발표했습니다. 새 Siri는 처음으로 기기에서 다단계 작업을 처리합니다.',
'<p>Apple이 <strong>Google의 Gemini 모델</strong>을 Apple의 Private Cloud Compute 인프라에서 구동하는 완전히 재구축된 Siri를 발표했습니다. 2011년 출시 이후 가장 큰 변화입니다.</p>
<h2>새 Siri의 기능</h2>
<p>재구축된 Siri는 처음으로 <strong>기기에서 다단계 작업을 처리</strong>하며, 외부 서버에 데이터를 보내지 않고도 여러 앱에 걸쳐 작업을 결합합니다. 새 Siri는 iOS 20과 함께 출시될 예정입니다.</p>',
true),

('stanford-ai-index-2026','ko','research','리서치','#4aaef5','Stanford HAI','2026-04-15',
'스탠퍼드 AI 지수 2026: AI 도입 속도, PC·인터넷 능가',
'스탠퍼드의 연간 AI 지수에 따르면 2026년 3월 기준 Anthropic이 종합 모델 순위에서 선두를 달리고 있으며 xAI, Google, OpenAI가 그 뒤를 잇습니다. 사람들은 PC나 인터넷보다 빠른 속도로 AI를 도입하고 있습니다.',
'<p>스탠퍼드 대학교 인간 중심 AI 연구소가 AI 진보, 도입, 사회적 영향에 대한 가장 포괄적인 <strong>AI 지수 2026</strong>을 발표했습니다.</p>
<h2>Anthropic이 종합 순위 선두</h2>
<p>처음으로 <strong>Anthropic</strong>이 스탠퍼드의 종합 모델 성능 순위에서 1위를 차지하며 xAI, Google, OpenAI를 근소하게 앞섰습니다.</p>
<h2>모든 이전 기술보다 빠른 도입</h2>
<p>AI 도구는 <strong>PC, 인터넷, 스마트폰보다 빠른 속도로 5억 명의 정기 사용자</strong>에 도달했습니다. 2026년 초 기준으로 지식 근로자의 67%가 최소 주 1회 AI 도구를 사용하고 있습니다.</p>',
true),

('pwc-top-companies-ai-economic-gains','ko','research','리서치','#4aaef5','PwC','2026-04-14',
'PwC: 상위 20% 기업이 AI 경제적 이익의 75% 차지',
'PwC의 2026년 AI 성과 연구에서 성장에 집중한 소수 기업이 크게 앞서고 있음이 밝혀졌습니다. 보고서는 대부분의 기업이 여전히 실험 단계에 있어 복리 수익을 놓치고 있다고 경고합니다.',
'<p>22개 산업 5,000개 기업의 데이터를 기반으로 한 PwC의 2026년 AI 성과 연구는 AI 선도 기업과 시장 나머지 사이의 격차가 벌어지고 있음을 보여줍니다.</p>
<h2>20/75 분열</h2>
<p>상위 20% 기업이 <strong>AI가 창출하는 경제적 가치의 75%</strong>를 차지합니다. 핵심 차별화 요인은 기술 지출이나 모델 접근성이 아닌 전략적 방향성입니다—선도 기업들은 AI를 활용해 <strong>새로운 수익원을 창출</strong>하고 있습니다.</p>
<h3>실험 모드의 위험성</h3>
<p>PwC는 기업의 60%가 여전히 실험 모드에 있어 파일럿을 운영하면서도 프로덕션으로 확장하지 못하고 있다고 경고합니다.</p>',
true),

('openai-acquires-tbpn','ko','business','비즈니스','#f5a623','The Verge','2026-04-14',
'OpenAI, 실리콘밸리 미디어 쇼 TBPN 인수',
'OpenAI가 실리콘밸리에서 컬트적 인기를 누리는 일일 라이브 기술·비즈니스 쇼인 TBPN(Technology Business Programming Network)을 인수했다고 발표했습니다. OpenAI의 첫 미디어 기업 인수.',
'<p>OpenAI가 <strong>TBPN(기술 비즈니스 프로그래밍 네트워크)</strong>을 인수했습니다. 실리콘밸리에서 가장 많이 시청되는 기술, AI, 비즈니스 일일 라이브 스트리밍 쇼입니다.</p>
<h2>OpenAI의 첫 미디어 인수</h2>
<p>이번 인수는 <strong>OpenAI의 첫 미디어 기업 인수</strong>로, AI 모델 개발을 넘어선 전략적 확장을 의미합니다. OpenAI는 TBPN이 기존 팀과 함께 독립적으로 운영을 계속할 것이라고 밝혔습니다. 재무 조건은 공개되지 않았습니다.</p>',
true),

('anthropic-confirms-claude-mythos','ko','models','모델','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic, Claude Mythos 존재 확인—공개 출시 계획 없어',
'Anthropic이 회사 역사상 가장 강력한 모델로 설명되는 Claude Mythos의 존재를 공식 확인했습니다. 공개 출시 계획은 없으며, Glasswing 프로젝트를 통해 약 50개 파트너 조직으로 접근이 제한됩니다.',
'<p>Anthropic이 <strong>Claude Mythos</strong>의 존재를 공식 확인했습니다—지금까지 구축한 모델 중 가장 강력하다고 설명하지만 공개 출시 계획은 없습니다.</p>
<h2>Glasswing 프로젝트</h2>
<p>Claude Mythos에 대한 접근은 <strong>Glasswing 프로젝트</strong>를 통해 관리되며, 고급 사이버보안 연구와 복잡한 다단계 추론 작업에 집중하는 약 50개 파트너 조직으로 제한됩니다.</p>
<h3>알려진 기능</h3>
<p>Anthropic은 Mythos의 벤치마크 결과를 공개하지 않았습니다. 파트너 조직들은 복잡한 다일 작업에서 지속적인 자율 운영이 가능하다고 설명하며, 한 사이버보안 파트너는 최소한의 인간 지시로 엔드투엔드 침투 테스트가 가능하다고 말했습니다.</p>',
true),

('openai-25b-revenue-ipo-2026','ko','business','비즈니스','#f5a623','Bloomberg','2026-04-13',
'OpenAI, 연간 매출 250억 달러 돌파하고 2026년 IPO 준비',
'OpenAI의 연간 환산 매출이 250억 달러를 돌파했으며 2026년 말 IPO를 향한 초기 준비를 진행 중입니다. Anthropic은 190억 달러에 가까워지며 바짝 뒤를 쫓고 있습니다.',
'<p>OpenAI의 연간 환산 매출이 <strong>250억 달러를 돌파</strong>했으며 2026년 말 IPO를 위한 초기 단계를 진행 중입니다.</p>
<h2>매출 구성</h2>
<p>매출의 대부분은 ChatGPT 구독과 API 사용에서 나옵니다. 기업 계약은 전체 매출의 약 40%를 차지하며 가장 빠르게 성장하는 부문입니다.</p>
<h2>Anthropic이 바짝 추격</h2>
<p><strong>Anthropic은 190억 달러에 접근</strong>하는 연간 환산 매출을 기록하고 있습니다. OpenAI는 2026년 초 재편을 완료해 더 일반적인 공익법인으로 전환하며 IPO의 주요 장애물을 제거했습니다.</p>',
true),

('meta-llama-4-scout-10m-context','ko','models','모델','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: MoE 아키텍처로 1000만 토큰 컨텍스트 지원',
'Meta가 MoE(Mixture-of-Experts) 아키텍처를 채택한 첫 Llama 모델인 Llama 4 Scout와 Maverick을 출시했습니다. Scout는 16개 전문가에 170억 활성 파라미터(총 1090억)와 1000만 토큰 컨텍스트 창을 갖춥니다.',
'<p>Meta가 <strong>Llama 4 Scout와 Maverick</strong>을 출시했습니다——쿼리당 파라미터의 일부만 활성화하는 <strong>Mixture-of-Experts(MoE) 아키텍처</strong>를 채택한 Llama 최초의 모델입니다.</p>
<h2>Scout: 긴 컨텍스트를 위해 설계</h2>
<p>Llama 4 Scout는 16개 전문가에 <strong>170억 활성 파라미터</strong>(총 1090억)와 <strong>1000만 토큰 컨텍스트 창</strong>을 보유합니다—모든 오픈 모델 중 가장 큰 컨텍스트입니다.</p>
<h2>상업적 이용</h2>
<p>두 모델 모두 Meta의 업데이트된 Llama 라이선스에 따라 상업적 이용이 가능합니다. MoE 아키텍처는 동등한 품질의 밀집 모델 대비 추론 비용을 약 60% 절감합니다.</p>',
true),

('google-gemma-4-31b-open-model','ko','models','모델','#7c6af7','Google Blog','2026-04-10',
'Google, Gemma 4 출시: 310억 파라미터 오픈 모델 세계 3위',
'Google이 23억에서 310억 파라미터의 4가지 버전으로 Gemma 4를 출시했습니다. 310억 Dense 모델은 오픈 모델 중 Arena AI에서 세계 3위를 기록—Google이 출시한 가장 강력한 오픈소스 모델.',
'<p>Google이 <strong>Gemma 4</strong>를 출시했습니다——오픈 웨이트 모델 패밀리의 최신 세대로 <strong>23억에서 310억 파라미터</strong>의 4가지 버전을 제공합니다.</p>
<h2>Gemma 4 31B: 세계 3위</h2>
<p>플래그십 <strong>Gemma 4 31B Dense는 오픈 모델 중 Arena AI 순위에서 세계 3위</strong>를 기록했습니다. 14B와 31B 버전은 Gemma 시리즈 최초로 네이티브 비전 기능을 포함합니다.</p>',
true),

('eu-ai-act-full-enforcement','ko','regulation','규제','#f56565','Wired','2026-04-09',
'EU AI법 전면 시행: 주요 공급업체들 준수 문서 공개',
'EU AI법이 2026년 3월에 전면 시행되어 EU 내 모든 AI 시스템이 투명성, 안전성, 위험 분류 요건을 충족해야 합니다. OpenAI, Anthropic, Google이 GPAI 준수 문서를 공개했습니다.',
'<p>EU AI법이 <strong>2026년 3월에 전면 시행</strong>되어 개발자 소재지와 관계없이 EU 내에 배포된 모든 AI 시스템에 적용됩니다.</p>
<h2>법률이 요구하는 것</h2>
<p>법률은 위험 기반 프레임워크를 확립합니다. 채용, 신용 평가, 의료, 법 집행에 사용되는 <strong>고위험 시스템</strong>은 공식 적합성 평가를 완료하고 EU 중앙 데이터베이스에 등록해야 합니다.</p>
<h3>제재</h3>
<p>위반 시 <strong>최대 3,500만 유로 또는 전 세계 연간 매출의 7%</strong>의 과징금이 부과될 수 있습니다. 브뤼셀에 본부를 둔 유럽 AI 사무소는 이미 여러 기업에 대한 예비 조사를 시작했습니다.</p>',
true),

('zhipu-glm-51-744b-open-source','ko','models','모델','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI, GLM-5.1 오픈소스 공개: 7440억 파라미터 MoE 모델',
'중국 AI 연구소 Zhipu AI가 MIT 라이선스로 GLM-5.1을 출시했습니다—포워드 패스당 400억 활성 파라미터와 200K 토큰 컨텍스트 창을 가진 7440억 파라미터 MoE 모델.',
'<p>중국 AI 연구소 Zhipu AI가 <strong>GLM-5.1</strong>을 MIT 라이선스로 출시해 상업적 배포를 포함한 모든 용도에 무료로 사용할 수 있게 했습니다.</p>
<h2>규모와 아키텍처</h2>
<p>GLM-5.1은 포워드 패스당 400억 활성 파라미터를 가진 <strong>7440억 파라미터 MoE 모델</strong>로 <strong>20만 토큰 컨텍스트 창</strong>을 지원합니다.</p>
<h3>왜 중요한가</h3>
<p>MIT 라이선스는 모델의 사용, 수정, 재배포에 어떠한 제한도 부과하지 않습니다. Meta의 Llama 패밀리를 포함한 이전의 대형 오픈 모델들은 다양한 제한이 있는 커스텀 라이선스를 사용합니다. GLM-5.1은 현재까지 가장 자유롭게 사용 가능한 프론티어 규모의 모델입니다.</p>',
true);
