-- Translations: Turkish (tr), Vietnamese (vi), Indonesian (id)

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

-- ═══════════════════════════════════════════════════════
-- TURKISH (tr)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','tr','models','Modeller','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7, SWE-bench''te %87,6 ile Rekor Kırdı',
'Anthropic''in Claude Opus 4.7 modeli, SWE-bench Verified''de %87,6 ile kamuya açık modeller arasındaki en yüksek skoru elde etti. Milyon token başına $5/$25 fiyatıyla ajantik yazılım mühendisliğinde niteliksel bir sıçramayı temsil ediyor.',
'<p>Anthropic''in yeni amiral gemisi modeli <strong>Claude Opus 4.7</strong>, SWE-bench Verified''de <strong>%87,6</strong> skoru ile sektör rekoru kırdı ve kamuya açık tüm modellerin en yüksek sonucunu geride bıraktı.</p>
<h2>SWE-bench Neyi Ölçer</h2>
<p>SWE-bench Verified, bir yapay zekanın popüler açık kaynak depolarındaki gerçek GitHub sorunlarını çözüp çözemeyeceğini test eder. Her görev, modelin bir hata raporunu okumasını, kod tabanını anlamasını, bir düzeltme yazmasını ve mevcut testleri insan yardımı olmadan geçmesini gerektirir.</p>
<h2>Fiyatlandırma ve Kullanılabilirlik</h2>
<p>Claude Opus 4.7, <strong>milyon giriş token başına $5 ve milyon çıkış token başına $25</strong> fiyatıyla sunuluyor. Anthropic API ve Claude.ai Pro aracılığıyla kullanılabilir.</p>
<h3>Geliştiriciler İçin Anlamı</h3>
<p>%87,6 ile model, gerçek dünyadaki hataların büyük çoğunluğunu insan müdahalesi olmadan güvenilir biçimde düzeltebiliyor — 18 ay önce ulaşılamaz sayılan bir yetenek.</p>',
true),

('gpt-54-three-variants-1m-context','tr','models','Modeller','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4, 1M Token Bağlamıyla Üç Varyantta Çıktı',
'OpenAI, GPT-5.4''ü Standard, Thinking ve Pro varyanlarında piyasaya sürdü. Her üçü de 1,05 milyon tokenlik bağlam penceresini paylaşıyor — OpenAI''nin ticari olarak sunduğu en büyük bağlam.',
'<p>OpenAI, <strong>GPT-5.4</strong>''ü Standard, Thinking ve Pro olmak üzere üç varyantta piyasaya sürdü. Her üçü de aynı mimariyi ve <strong>1,05 milyon tokenlik bağlam penceresini</strong> paylaşıyor.</p>
<h2>Üç Varyant</h2>
<p><strong>Standard</strong> hız ve maliyet için optimize edildi. <strong>Thinking</strong> karmaşık problemler için genişletilmiş akıl yürütme ekliyor. <strong>Pro</strong> maksimum yetenek ile en büyük bağlamı birleştiriyor.</p>
<h2>Dinamik Araç Alımı</h2>
<p>Tüm araç tanımlarını baştan yüklemek yerine model, görevler ortaya çıktıkça yalnızca gerekli özellikleri alıyor. Bu, prompt boyutunu azaltıyor ve yanıt kalitesini artırıyor.</p>',
true),

('apple-rebuilds-siri-google-gemini','tr','business','İş Dünyası','#f5a623','9to5Mac','2026-04-16',
'Apple, Siri''yi Özel Bulut Üzerinden Google Gemini ile Yeniden İnşa Etti',
'Apple, Google''ın Gemini modeliyle çalışan ve Apple''ın Private Cloud Compute altyapısında barındırılan yeniden tasarlanmış bir Siri duyurdu. Yeni Siri, cihaz üzerinde ilk kez çok adımlı görevleri yerine getiriyor.',
'<p>Apple, <strong>Google''ın Gemini modeli</strong>nin Apple''ın Private Cloud Compute altyapısında çalışmasıyla güçlendirilen Siri''nin tamamen yeniden inşasını duyurdu. Bu, 2011''deki lansmanından bu yana Siri''de yapılan en önemli değişiklik.</p>
<h2>Yeni Siri Neler Yapabiliyor</h2>
<p>Yeniden tasarlanan Siri, <strong>cihaz üzerinde ilk kez çok adımlı görevleri</strong> yerine getiriyor; verileri harici sunuculara göndermeden birden fazla uygulamada işlemleri birleştiriyor. Yeni Siri''nin iOS 20 ile gelmesi bekleniyor.</p>',
true),

('stanford-ai-index-2026','tr','research','Araştırma','#4aaef5','Stanford HAI','2026-04-15',
'Stanford YZ Endeksi 2026: YZ Benimsenmesi PC veya İnterneti Geride Bıraktı',
'Stanford''ın yıllık YZ Endeksi, Mart 2026 itibarıyla Anthropic''in genel model sıralamasında xAI, Google ve OpenAI''nin önünde liderliği sürdürdüğünü ortaya koyuyor. İnsanlar YZ''yi PC veya internetten daha hızlı benimsiyor.',
'<p>Stanford Üniversitesi İnsan Odaklı YZ Enstitüsü, yapay zekanın ilerlemesini ve toplumsal etkisini en kapsamlı biçimde ele alan <strong>YZ Endeksi 2026</strong>''yı yayımladı.</p>
<h2>Anthropic Genel Sıralamada Lider</h2>
<p>İlk kez <strong>Anthropic</strong>, Stanford''ın genel model performansı sıralamasında birinci oldu; xAI, Google ve OpenAI''yi az farkla geride bıraktı.</p>
<h2>Tüm Önceki Teknolojileri Geride Bırakan Benimseme</h2>
<p>YZ araçları, <strong>PC, internet veya akıllı telefondan daha hızlı 500 milyon düzenli kullanıcıya</strong> ulaştı. Bilgi işçilerinin %67''si YZ araçlarını en az haftada bir kullanıyor.</p>',
true),

('pwc-top-companies-ai-economic-gains','tr','research','Araştırma','#4aaef5','PwC','2026-04-14',
'PwC: Şirketlerin İlk %20''si YZ Ekonomik Kazançlarının %75''ini Alıyor',
'PwC''nin 2026 YZ Performans araştırması, büyümeye odaklanan az sayıda şirketin büyük ölçüde öne geçtiğini ortaya koyuyor. Rapor, çoğu şirketin hâlâ deneme aşamasında olduğu ve bileşik getirileri kaçırdığı konusunda uyarıyor.',
'<p>PwC''nin 22 sektörden 5.000 şirketin verilerine dayanan 2026 YZ Performans araştırması, YZ liderleriyle piyasanın geri kalanı arasında büyüyen bir uçurum ortaya koyuyor.</p>
<h2>20/75 Ayrışması</h2>
<p>Şirketlerin ilk %20''si, <strong>YZ tarafından üretilen ekonomik değerin %75''ini</strong> elde ediyor. Belirleyici fark teknoloji harcamaları değil, stratejik yönelimdir: lider şirketler YZ''yi <strong>yeni gelir akışları yaratmak</strong> için kullanıyor.</p>
<h3>Deneme Modunun Tehlikesi</h3>
<p>PwC, şirketlerin %60''ının hâlâ deneme modunda olduğunu ve pilotları üretime taşımadan yürüttüğünü uyarıyor. Bu şirketler bileşik getirileri kaçırıyor ve liderler veri avantajı inşa ederken giderek geride kalıyor.</p>',
true),

('openai-acquires-tbpn','tr','business','İş Dünyası','#f5a623','The Verge','2026-04-14',
'OpenAI, Silikon Vadisi Medya Şovu TBPN''yi Satın Aldı',
'OpenAI, Silikon Vadisi''nde kült bir fenomene dönüşen günlük canlı teknoloji ve iş şovu TBPN''yi (Technology Business Programming Network) satın aldığını açıkladı. OpenAI''nin ilk medya şirketi satın alımı.',
'<p>OpenAI, teknoloji, YZ ve iş dünyası üzerine günlük canlı yayın yapan ve Silikon Vadisi''nin en çok izlenen programlarından biri haline gelen <strong>TBPN''yi</strong> satın aldı.</p>
<h2>OpenAI''nin İlk Medya Satın Alımı</h2>
<p>Bu, <strong>OpenAI''nin ilk medya şirketi satın alımıdır</strong>. OpenAI, TBPN''nin mevcut ekibiyle bağımsız olarak çalışmayı sürdüreceğini açıkladı. Finansal koşullar açıklanmadı.</p>',
true),

('anthropic-confirms-claude-mythos','tr','models','Modeller','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic, Claude Mythos''u Onayladı — Ama Kamuya Sunmayacak',
'Anthropic, şirketin şimdiye kadar inşa ettiği en güçlü model olarak tanımladığı Claude Mythos''un varlığını doğruladı. Kamuya açık bir sürüm planlanmıyor; erişim Glasswing Projesi aracılığıyla yaklaşık 50 ortak kuruluşla sınırlı.',
'<p>Anthropic, şimdiye kadar inşa ettiği en güçlü model olarak tanımladığı <strong>Claude Mythos</strong>''un varlığını resmen doğruladı; kamuya sunma planı yok.</p>
<h2>Glasswing Projesi</h2>
<p>Claude Mythos''a erişim, ileri siber güvenlik araştırmaları ve karmaşık akıl yürütme görevlerine odaklanan yaklaşık 50 ortak kuruluşla sınırlı <strong>Glasswing Projesi</strong> aracılığıyla yönetiliyor.</p>
<h3>Bilinen Yetenekler</h3>
<p>Anthropic, Mythos için kıyaslama sonuçları yayımlamadı. Ortak kuruluşlar, modelin karmaşık çok günlük görevlerde sürekli otonom çalışma yapabildiğini aktarıyor.</p>',
true),

('openai-25b-revenue-ipo-2026','tr','business','İş Dünyası','#f5a623','Bloomberg','2026-04-13',
'OpenAI Yıllık 25 Milyar Doları Aştı, 2026''da Halka Arzı Hedefliyor',
'OpenAI''nin yıllıklandırılmış geliri 25 milyar doları aştı ve muhtemelen 2026 sonunda gerçekleşebilecek bir halka arz için ilk adımlar atılıyor. Anthropic, 19 milyar dolara yaklaşarak yakın takipte.',
'<p>OpenAI''nin yıllıklandırılmış geliri <strong>25 milyar doları aştı</strong> ve muhtemelen 2026 sonunda gerçekleşebilecek bir halka arz için ilk adımlar atılıyor.</p>
<h2>Gelir Dağılımı</h2>
<p>Gelirlerin büyük bölümü ChatGPT abonelikleri ve API kullanımından geliyor. Kurumsal sözleşmeler toplam gelirin yaklaşık %40''ını oluşturuyor ve en hızlı büyüyen segment konumunda.</p>
<h2>Anthropic Yakın Takipte</h2>
<p><strong>Anthropic, 19 milyar dolara yaklaşıyor.</strong> OpenAI, 2026 başında yeniden yapılanmasını tamamlayarak daha geleneksel bir kamu yararı şirketine dönüştü ve halka arz önündeki temel engeli ortadan kaldırdı.</p>',
true),

('meta-llama-4-scout-10m-context','tr','models','Modeller','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: MoE Mimarisiyle 10M Token Bağlamı',
'Meta, MoE (Mixture-of-Experts) mimarisini kullanan ilk Llama modelleri olan Llama 4 Scout ve Maverick''i yayımladı. Scout, 16 uzman üzerinde 17 milyar aktif parametreye (toplam 109 milyar) ve 10 milyon tokenlik bağlam penceresine sahip.',
'<p>Meta, <strong>Llama 4 Scout ve Maverick''i</strong> yayımladı — Llama ailesinde <strong>Mixture-of-Experts (MoE) mimarisini</strong> kullanan ilk modeller. Her sorguda parametrelerin yalnızca bir alt kümesini etkinleştiriyor.</p>
<h2>Scout: Uzun Bağlam İçin Tasarlandı</h2>
<p>Llama 4 Scout, 16 uzman üzerinde <strong>17 milyar aktif parametreye</strong> (toplam 109 milyar) ve <strong>10 milyon tokenlik bağlam penceresine</strong> sahip — tüm açık modeller arasında en büyüğü.</p>
<h2>Ticari Kullanım</h2>
<p>Her iki model de Meta''nın güncellenmiş Llama lisansı kapsamında ticari kullanıma açık. MoE mimarisi, eşdeğer kalitedeki yoğun modele kıyasla çıkarım maliyetlerini yaklaşık %60 düşürüyor.</p>',
true),

('google-gemma-4-31b-open-model','tr','models','Modeller','#7c6af7','Google Blog','2026-04-10',
'Google Gemma 4''ü Yayımladı: 31B Açık Model Dünya 3.''sü Oldu',
'Google, 2,3 milyardan 31 milyar parametreye kadar dört varyantta Gemma 4''ü yayımladı. 31B Dense modeli, açık modeller arasında Arena AI''de dünya 3.''sü — Google''ın bugüne kadar yayımladığı en güçlü açık kaynak modeli.',
'<p>Google, açık ağırlıklı model ailesinin en yeni nesli olan <strong>Gemma 4''ü</strong> <strong>2,3 milyardan 31 milyar parametreye</strong> kadar dört varyantta yayımladı.</p>
<h2>Gemma 4 31B: Dünya 3.''sü</h2>
<p>Amiral gemisi model <strong>Gemma 4 31B Dense, açık modeller arasında Arena AI sıralamasında dünya 3.''sü</strong> oldu. 14B ve 31B varyantlar, Gemma serisinde ilk kez yerel görme yeteneklerini içeriyor.</p>',
true),

('eu-ai-act-full-enforcement','tr','regulation','Düzenleme','#f56565','Wired','2026-04-09',
'AB YZ Yasası Tam Yürürlükte: Büyük Sağlayıcılar Uyumluluk Belgelerini Yayımladı',
'AB YZ Yasası Mart 2026''da tam yürürlüğe girdi; AB''deki tüm YZ sistemlerinin şeffaflık, güvenlik ve risk sınıflandırma gerekliliklerini karşılaması zorunlu hale geldi. OpenAI, Anthropic ve Google GPAI uyumluluk belgelerini yayımladı.',
'<p>AB YZ Yasası, <strong>Mart 2026''da tam yürürlüğe girdi</strong> ve geliştiricinin nerede olduğundan bağımsız olarak AB''de dağıtılan tüm YZ sistemlerine uygulanıyor.</p>
<h2>Yasa Ne Gerektiriyor</h2>
<p>Yasa, riske dayalı bir çerçeve oluşturuyor. İşe alım, kredi değerlendirmesi, sağlık ve kolluk kuvvetlerinde kullanılan <strong>yüksek riskli sistemler</strong> resmi uygunluk değerlendirmelerini tamamlamalı ve AB merkezi veri tabanına kaydedilmeli.</p>
<h3>Yaptırımlar</h3>
<p>İhlaller <strong>35 milyon Euro veya küresel yıllık cirosunun %7''sine</strong> kadar para cezasına yol açabilir. Brüksel merkezli Avrupa YZ Ofisi birçok şirkete yönelik ön soruşturma başlattı.</p>',
true),

('zhipu-glm-51-744b-open-source','tr','models','Modeller','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI, GLM-5.1''i Açık Kaynak Yaptı: 744 Milyar Parametreli MoE Model',
'Çinli YZ laboratuvarı Zhipu AI, GLM-5.1''i MIT lisansıyla yayımladı — geçiş başına 40 milyar aktif parametreli ve 200K tokenlik bağlam pencereli 744 milyar parametreli bir mixture-of-experts modeli.',
'<p>Çinli YZ laboratuvarı Zhipu AI, <strong>GLM-5.1''i</strong> en izin verici açık kaynak lisanslarından biri olan MIT lisansıyla yayımladı; kısıtlama olmaksızın ticari dağıtım dahil her türlü kullanıma açık.</p>
<h2>Ölçek ve Mimari</h2>
<p>GLM-5.1, geçiş başına 40 milyar aktif parametreli <strong>744 milyar parametreli Mixture-of-Experts modelidir</strong> ve <strong>200.000 tokenlik bağlam penceresini</strong> destekliyor.</p>
<h3>Neden Önemli</h3>
<p>MIT lisansı, modelin nasıl kullanıldığına, değiştirildiğine veya yeniden dağıtıldığına dair hiçbir kısıtlama getirmiyor. GLM-5.1, bugüne kadar en özgürce kullanılabilir sınır ölçekli model konumunda.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- VIETNAMESE (vi)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','vi','models','Mô hình','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 Lập Kỷ Lục SWE-bench với 87,6%',
'Claude Opus 4.7 của Anthropic đã lập kỷ lục mới trên SWE-bench Verified với 87,6% — điểm cao nhất của bất kỳ mô hình nào được công bố công khai. Với giá $5/$25 mỗi triệu token, đánh dấu bước nhảy vọt trong kỹ thuật phần mềm tự động.',
'<p>Mô hình hàng đầu mới nhất của Anthropic, <strong>Claude Opus 4.7</strong>, đã lập kỷ lục ngành trên SWE-bench Verified với điểm <strong>87,6%</strong>, vượt qua tất cả kết quả đã công bố của các mô hình có sẵn công khai.</p>
<h2>SWE-bench Đo Lường Gì</h2>
<p>SWE-bench Verified kiểm tra xem AI có thể giải quyết các vấn đề GitHub thực tế từ các kho mã nguồn mở phổ biến hay không, yêu cầu mô hình đọc báo cáo lỗi, hiểu codebase, viết bản sửa lỗi và vượt qua các bài test hiện có mà không cần hướng dẫn của con người.</p>
<h2>Giá và Khả Dụng</h2>
<p>Claude Opus 4.7 có giá <strong>$5 mỗi triệu token đầu vào và $25 mỗi triệu token đầu ra</strong>. Có sẵn qua Anthropic API và Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','vi','models','Mô hình','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 Ra Mắt với Ba Phiên Bản và Ngữ Cảnh 1M Token',
'OpenAI phát hành GPT-5.4 với các phiên bản Standard, Thinking và Pro. Cả ba chia sẻ cửa sổ ngữ cảnh 1,05 triệu token — lớn nhất OpenAI từng cung cấp thương mại.',
'<p>OpenAI mở rộng dòng sản phẩm với <strong>GPT-5.4</strong> trong ba phiên bản: Standard, Thinking và Pro, tất cả đều chia sẻ <strong>cửa sổ ngữ cảnh 1,05 triệu token</strong>.</p>
<h2>Ba Phiên Bản</h2>
<p><strong>Standard</strong> tối ưu hóa cho tốc độ và chi phí. <strong>Thinking</strong> thêm lý luận mở rộng cho các vấn đề phức tạp. <strong>Pro</strong> kết hợp khả năng tối đa với ngữ cảnh lớn nhất.</p>
<h2>Truy Xuất Công Cụ Động</h2>
<p>Thay vì tải tất cả định nghĩa công cụ ngay từ đầu, mô hình chỉ lấy các thông số cần thiết khi nhiệm vụ phát sinh, giảm kích thước prompt và cải thiện chất lượng phản hồi.</p>',
true),

('apple-rebuilds-siri-google-gemini','vi','business','Kinh doanh','#f5a623','9to5Mac','2026-04-16',
'Apple Xây Dựng Lại Siri Dựa Trên Google Gemini Qua Đám Mây Riêng',
'Apple công bố Siri được xây dựng lại hoàn toàn, được cung cấp bởi mô hình Gemini của Google chạy trên cơ sở hạ tầng Private Cloud Compute của Apple. Siri mới lần đầu tiên xử lý các tác vụ nhiều bước trên thiết bị.',
'<p>Apple công bố việc xây dựng lại hoàn toàn Siri, được cung cấp bởi <strong>mô hình Gemini của Google</strong> chạy trên cơ sở hạ tầng Private Cloud Compute của Apple. Đây là thay đổi quan trọng nhất đối với Siri kể từ khi ra mắt năm 2011.</p>
<h2>Siri Mới Có Thể Làm Gì</h2>
<p>Siri được cải tạo xử lý <strong>các tác vụ nhiều bước trên thiết bị lần đầu tiên</strong>, kết hợp các hành động trên nhiều ứng dụng mà không gửi dữ liệu đến máy chủ bên ngoài. Siri mới dự kiến ra mắt cùng iOS 20.</p>',
true),

('stanford-ai-index-2026','vi','research','Nghiên cứu','#4aaef5','Stanford HAI','2026-04-15',
'Chỉ Số AI Stanford 2026: Tốc Độ Áp Dụng AI Vượt PC và Internet',
'Chỉ số AI thường niên của Stanford tiết lộ rằng Anthropic dẫn đầu bảng xếp hạng mô hình tổng thể tính đến tháng 3 năm 2026, vượt trước xAI, Google và OpenAI. Mọi người áp dụng AI nhanh hơn họ từng áp dụng PC hay internet.',
'<p>Viện AI Lấy Con Người Làm Trung Tâm của Đại học Stanford công bố <strong>Chỉ Số AI 2026</strong>, bức tranh toàn diện nhất về tiến bộ và tác động xã hội của trí tuệ nhân tạo.</p>
<h2>Anthropic Dẫn Đầu Bảng Xếp Hạng Tổng Thể</h2>
<p>Lần đầu tiên, <strong>Anthropic</strong> đứng đầu bảng xếp hạng hiệu suất mô hình tổng thể của Stanford, nhỉnh hơn xAI, Google và OpenAI.</p>
<h2>Áp Dụng Nhanh Hơn Mọi Công Nghệ Trước Đây</h2>
<p>Các công cụ AI đạt <strong>500 triệu người dùng thường xuyên nhanh hơn PC, internet hay smartphone</strong>. 67% nhân viên tri thức sử dụng công cụ AI ít nhất hàng tuần.</p>',
true),

('pwc-top-companies-ai-economic-gains','vi','research','Nghiên cứu','#4aaef5','PwC','2026-04-14',
'PwC: Top 20% Doanh Nghiệp Chiếm 75% Lợi Ích Kinh Tế AI',
'Nghiên cứu Hiệu suất AI 2026 của PwC cho thấy sự phân hóa rõ rệt: một nhóm nhỏ công ty tập trung vào tăng trưởng đang bứt phá mạnh. Báo cáo cảnh báo hầu hết doanh nghiệp vẫn đang trong giai đoạn thử nghiệm.',
'<p>Nghiên cứu Hiệu suất AI 2026 của PwC dựa trên dữ liệu từ 5.000 công ty trong 22 ngành tiết lộ khoảng cách ngày càng tăng giữa các nhà lãnh đạo AI và phần còn lại.</p>
<h2>Sự Phân Hóa 20/75</h2>
<p>Top 20% công ty chiếm <strong>75% giá trị kinh tế được tạo ra bởi AI</strong>. Yếu tố khác biệt là định hướng chiến lược: các công ty dẫn đầu sử dụng AI để <strong>tạo nguồn doanh thu mới</strong>.</p>
<h3>Nguy Hiểm Của Giai Đoạn Thử Nghiệm</h3>
<p>PwC cảnh báo 60% công ty vẫn đang trong giai đoạn thử nghiệm, chạy các thí điểm mà không mở rộng lên sản xuất, bỏ lỡ lợi nhuận tích lũy.</p>',
true),

('openai-acquires-tbpn','vi','business','Kinh doanh','#f5a623','The Verge','2026-04-14',
'OpenAI Mua Lại Chương Trình Truyền Thông TBPN của Thung Lũng Silicon',
'OpenAI thông báo mua lại TBPN, Technology Business Programming Network — chương trình công nghệ và kinh doanh trực tiếp hàng ngày đã trở thành hiện tượng cult ở Thung Lũng Silicon. Đây là lần đầu tiên OpenAI mua lại một công ty truyền thông.',
'<p>OpenAI mua lại <strong>TBPN (Technology Business Programming Network)</strong>, chương trình livestream hàng ngày về công nghệ, AI và kinh doanh, một trong những chương trình được xem nhiều nhất ở Thung Lũng Silicon.</p>
<h2>Lần Đầu Tiên OpenAI Mua Công Ty Truyền Thông</h2>
<p>Đây là <strong>lần đầu tiên OpenAI mua lại một công ty truyền thông</strong>. OpenAI cho biết TBPN sẽ tiếp tục hoạt động độc lập với đội ngũ hiện tại. Điều khoản tài chính không được tiết lộ.</p>',
true),

('anthropic-confirms-claude-mythos','vi','models','Mô hình','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic Xác Nhận Claude Mythos — Nhưng Sẽ Không Phát Hành Công Khai',
'Anthropic xác nhận sự tồn tại của Claude Mythos, được mô tả là mô hình mạnh nhất mà công ty từng xây dựng. Không có kế hoạch phát hành công khai. Quyền truy cập giới hạn ở khoảng 50 tổ chức đối tác qua Dự án Glasswing.',
'<p>Anthropic chính thức xác nhận sự tồn tại của <strong>Claude Mythos</strong>, mô hình mà họ mô tả là mạnh nhất từng được xây dựng, không có kế hoạch phát hành công khai.</p>
<h2>Dự Án Glasswing</h2>
<p>Quyền truy cập vào Claude Mythos được quản lý thông qua <strong>Dự án Glasswing</strong>, chương trình hạn chế dành cho khoảng 50 tổ chức đối tác tập trung vào nghiên cứu an ninh mạng nâng cao và lập luận phức tạp.</p>',
true),

('openai-25b-revenue-ipo-2026','vi','business','Kinh doanh','#f5a623','Bloomberg','2026-04-13',
'OpenAI Vượt 25 Tỷ Đô Doanh Thu Hàng Năm, Nhắm IPO Năm 2026',
'OpenAI đã vượt 25 tỷ đô doanh thu hàng năm và đang thực hiện các bước đầu tiên hướng tới IPO, có thể vào cuối năm 2026. Anthropic theo sát với gần 19 tỷ đô.',
'<p>OpenAI đã vượt mức <strong>25 tỷ đô doanh thu hàng năm</strong> và đang thực hiện các bước đầu tiên hướng tới IPO có thể vào cuối năm 2026.</p>
<h2>Cơ Cấu Doanh Thu</h2>
<p>Phần lớn doanh thu đến từ đăng ký ChatGPT và sử dụng API. Hợp đồng doanh nghiệp chiếm khoảng 40% tổng doanh thu và là phân khúc tăng trưởng nhanh nhất.</p>
<h2>Anthropic Bám Sát</h2>
<p><strong>Anthropic tiếp cận 19 tỷ đô</strong> doanh thu hàng năm. OpenAI hoàn tất tái cơ cấu đầu năm 2026, chuyển đổi thành công ty lợi ích công cộng thông thường hơn.</p>',
true),

('meta-llama-4-scout-10m-context','vi','models','Mô hình','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: Ngữ Cảnh 10M Token với Kiến Trúc MoE',
'Meta phát hành Llama 4 Scout và Maverick — các mô hình Llama đầu tiên dùng kiến trúc Mixture-of-Experts. Scout có 17 tỷ tham số hoạt động trên 16 chuyên gia (109 tỷ tổng cộng) và cửa sổ ngữ cảnh 10 triệu token.',
'<p>Meta phát hành <strong>Llama 4 Scout và Maverick</strong> — các mô hình đầu tiên trong dòng Llama sử dụng <strong>kiến trúc Mixture-of-Experts (MoE)</strong> chỉ kích hoạt một tập con tham số cho mỗi truy vấn.</p>
<h2>Scout: Được Xây Dựng Cho Ngữ Cảnh Dài</h2>
<p>Llama 4 Scout có <strong>17 tỷ tham số hoạt động</strong> trên 16 chuyên gia (109 tỷ tổng cộng) và <strong>cửa sổ ngữ cảnh 10 triệu token</strong> — lớn nhất trong các mô hình mở.</p>
<h2>Sử Dụng Thương Mại</h2>
<p>Cả hai mô hình đều có sẵn cho sử dụng thương mại theo giấy phép Llama cập nhật của Meta. Kiến trúc MoE giảm chi phí suy luận khoảng 60% so với mô hình dày đặc chất lượng tương đương.</p>',
true),

('google-gemma-4-31b-open-model','vi','models','Mô hình','#7c6af7','Google Blog','2026-04-10',
'Google Phát Hành Gemma 4: Mô Hình Mở 31B Xếp Hạng #3 Toàn Cầu',
'Google phát hành Gemma 4 trong bốn biến thể từ 2,3B đến 31B tham số. Mô hình 31B Dense xếp hạng thứ 3 toàn cầu trên Arena AI trong số các mô hình mở — mô hình mã nguồn mở mạnh nhất Google từng phát hành.',
'<p>Google phát hành <strong>Gemma 4</strong>, thế hệ mới nhất của dòng mô hình open-weight, trong bốn biến thể từ <strong>2,3 đến 31 tỷ tham số</strong>.</p>
<h2>Gemma 4 31B: #3 Toàn Cầu</h2>
<p>Mô hình hàng đầu <strong>Gemma 4 31B Dense xếp hạng thứ ba toàn cầu</strong> trên Arena AI trong số các mô hình mở. Các biến thể 14B và 31B lần đầu tiên trong dòng Gemma có khả năng thị giác tích hợp.</p>',
true),

('eu-ai-act-full-enforcement','vi','regulation','Quy định','#f56565','Wired','2026-04-09',
'Đạo Luật AI EU Có Hiệu Lực Đầy Đủ: Các Nhà Cung Cấp Lớn Công Bố Tài Liệu Tuân Thủ',
'Đạo Luật AI EU có hiệu lực đầy đủ vào tháng 3 năm 2026, yêu cầu tất cả các hệ thống AI tại EU đáp ứng các yêu cầu về minh bạch, an toàn và phân loại rủi ro.',
'<p>Đạo Luật AI EU <strong>có hiệu lực đầy đủ vào tháng 3 năm 2026</strong>, áp dụng cho tất cả các hệ thống AI được triển khai trong EU bất kể nhà phát triển ở đâu.</p>
<h2>Luật Yêu Cầu Gì</h2>
<p>Luật thiết lập khung dựa trên rủi ro. <strong>Hệ thống rủi ro cao</strong> — dùng trong tuyển dụng, chấm điểm tín dụng, y tế, thực thi pháp luật — phải hoàn thành đánh giá tuân thủ chính thức và đăng ký vào cơ sở dữ liệu trung tâm EU.</p>
<h3>Chế Tài</h3>
<p>Vi phạm có thể bị phạt tới <strong>35 triệu Euro hoặc 7% doanh thu toàn cầu hàng năm</strong>. Văn phòng AI Châu Âu tại Brussels đã mở điều tra sơ bộ đối với một số công ty.</p>',
true),

('zhipu-glm-51-744b-open-source','vi','models','Mô hình','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI Mở Mã Nguồn GLM-5.1: Mô Hình MoE 744 Tỷ Tham Số',
'Phòng thí nghiệm AI Trung Quốc Zhipu AI phát hành GLM-5.1 theo giấy phép MIT — mô hình mixture-of-experts 744 tỷ tham số với 40 tỷ tham số hoạt động mỗi lượt và cửa sổ ngữ cảnh 200K token.',
'<p>Phòng thí nghiệm AI Trung Quốc Zhipu AI phát hành <strong>GLM-5.1</strong> theo giấy phép MIT — một trong những giấy phép mã nguồn mở cho phép nhất, miễn phí cho mọi mục đích sử dụng bao gồm triển khai thương mại không hạn chế.</p>
<h2>Quy Mô và Kiến Trúc</h2>
<p>GLM-5.1 là <strong>mô hình Mixture-of-Experts 744 tỷ tham số</strong> với 40 tỷ tham số hoạt động mỗi lượt, hỗ trợ <strong>cửa sổ ngữ cảnh 200.000 token</strong>.</p>
<h3>Tại Sao Quan Trọng</h3>
<p>Giấy phép MIT không áp đặt hạn chế nào về cách mô hình được sử dụng, sửa đổi hay phân phối lại. GLM-5.1 là mô hình quy mô frontier có sẵn tự do nhất cho đến nay.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- INDONESIAN (id)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','id','models','Model','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 Mencetak Rekor SWE-bench dengan 87,6%',
'Claude Opus 4.7 dari Anthropic mencetak rekor baru di SWE-bench Verified dengan 87,6% — skor tertinggi dari model yang tersedia secara publik. Dengan harga $5/$25 per juta token, ini menandai lompatan kualitatif dalam rekayasa perangkat lunak agentik.',
'<p>Model unggulan terbaru Anthropic, <strong>Claude Opus 4.7</strong>, mencetak rekor industri di SWE-bench Verified dengan skor <strong>87,6%</strong>, melampaui semua hasil yang dipublikasikan dari model yang tersedia secara publik.</p>
<h2>Apa yang Diukur SWE-bench</h2>
<p>SWE-bench Verified menguji apakah AI dapat menyelesaikan masalah GitHub nyata dari repositori open-source populer, mengharuskan model membaca laporan bug, memahami codebase, menulis perbaikan, dan melewati tes yang ada tanpa panduan manusia.</p>
<h2>Harga dan Ketersediaan</h2>
<p>Claude Opus 4.7 dihargai <strong>$5 per juta token input dan $25 per juta token output</strong>. Tersedia melalui API Anthropic dan Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','id','models','Model','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 Hadir dalam Tiga Varian dengan Konteks 1 Juta Token',
'OpenAI meluncurkan GPT-5.4 dalam varian Standard, Thinking, dan Pro. Ketiganya berbagi jendela konteks 1,05 juta token — terbesar yang pernah ditawarkan OpenAI secara komersial.',
'<p>OpenAI memperluas jajaran modelnya dengan peluncuran <strong>GPT-5.4</strong> dalam tiga varian: Standard, Thinking, dan Pro, semuanya berbagi <strong>jendela konteks 1,05 juta token</strong>.</p>
<h2>Tiga Varian</h2>
<p><strong>Standard</strong> dioptimalkan untuk kecepatan dan biaya. <strong>Thinking</strong> menambahkan penalaran diperluas untuk masalah kompleks. <strong>Pro</strong> menggabungkan kemampuan maksimum dengan konteks terbesar.</p>
<h2>Pengambilan Alat Dinamis</h2>
<p>Alih-alih memuat semua definisi alat di awal, model hanya mengambil spesifikasi yang diperlukan saat tugas muncul, mengurangi ukuran prompt dan meningkatkan kualitas respons.</p>',
true),

('apple-rebuilds-siri-google-gemini','id','business','Bisnis','#f5a623','9to5Mac','2026-04-16',
'Apple Membangun Ulang Siri Berbasis Google Gemini Melalui Cloud Pribadi',
'Apple mengumumkan Siri yang dibangun ulang sepenuhnya, didukung oleh model Gemini Google yang berjalan di infrastruktur Private Cloud Compute Apple. Siri baru untuk pertama kalinya menangani tugas multi-langkah di perangkat.',
'<p>Apple mengumumkan pembangunan ulang Siri secara menyeluruh, didukung oleh <strong>model Gemini Google</strong> yang berjalan di infrastruktur Private Cloud Compute Apple. Ini adalah perubahan paling signifikan pada Siri sejak diperkenalkan tahun 2011.</p>
<h2>Kemampuan Siri Baru</h2>
<p>Siri yang diperbarui untuk pertama kalinya menangani <strong>tugas multi-langkah di perangkat</strong>, menggabungkan tindakan di beberapa aplikasi tanpa mengirim data ke server eksternal. Siri baru diharapkan hadir dengan iOS 20.</p>',
true),

('stanford-ai-index-2026','id','research','Riset','#4aaef5','Stanford HAI','2026-04-15',
'Indeks AI Stanford 2026: Adopsi AI Melampaui PC atau Internet',
'Indeks AI tahunan Stanford mengungkapkan bahwa Anthropic memimpin peringkat model keseluruhan per Maret 2026, di depan xAI, Google, dan OpenAI. Orang-orang mengadopsi AI lebih cepat dari PC atau internet.',
'<p>Institut AI Berpusat pada Manusia Universitas Stanford menerbitkan <strong>Indeks AI 2026</strong>, gambaran paling komprehensif tentang kemajuan AI dan dampak sosialnya.</p>
<h2>Anthropic Memimpin Peringkat Keseluruhan</h2>
<p>Untuk pertama kalinya, <strong>Anthropic</strong> memimpin peringkat kinerja model keseluruhan Stanford, sedikit di atas xAI, Google, dan OpenAI.</p>
<h2>Adopsi Lebih Cepat dari Teknologi Sebelumnya</h2>
<p>Alat AI mencapai <strong>500 juta pengguna tetap lebih cepat dari PC, internet, atau smartphone</strong>. 67% pekerja pengetahuan menggunakan alat AI setidaknya setiap minggu.</p>',
true),

('pwc-top-companies-ai-economic-gains','id','research','Riset','#4aaef5','PwC','2026-04-14',
'PwC: 20% Perusahaan Teratas Menguasai 75% Keuntungan Ekonomi AI',
'Studi Kinerja AI 2026 PwC menemukan kesenjangan yang semakin besar antara pemimpin AI dan pasar lainnya. Laporan memperingatkan sebagian besar perusahaan masih dalam mode eksperimen.',
'<p>Studi Kinerja AI 2026 PwC berdasarkan data dari 5.000 perusahaan di 22 industri mengungkapkan kesenjangan yang semakin besar antara pemimpin AI dan pasar lainnya.</p>
<h2>Pembagian 20/75</h2>
<p>20% perusahaan teratas menguasai <strong>75% nilai ekonomi yang dihasilkan AI</strong>. Faktor pembeda adalah orientasi strategis: perusahaan terdepan menggunakan AI untuk <strong>menciptakan aliran pendapatan baru</strong>.</p>
<h3>Bahaya Mode Eksperimen</h3>
<p>PwC memperingatkan 60% perusahaan masih dalam mode eksperimen, menjalankan pilot tanpa skalasi ke produksi, melewatkan keuntungan yang terakumulasi.</p>',
true),

('openai-acquires-tbpn','id','business','Bisnis','#f5a623','The Verge','2026-04-14',
'OpenAI Mengakuisisi Acara Media Silicon Valley TBPN',
'OpenAI mengumumkan akuisisi TBPN, Technology Business Programming Network — acara teknologi dan bisnis live harian yang telah menjadi fenomena cult di Silicon Valley. Ini adalah akuisisi perusahaan media pertama OpenAI.',
'<p>OpenAI mengakuisisi <strong>TBPN (Technology Business Programming Network)</strong>, acara live streaming harian tentang teknologi, AI, dan bisnis yang menjadi salah satu yang paling banyak ditonton di Silicon Valley.</p>
<h2>Akuisisi Media Pertama OpenAI</h2>
<p>Ini adalah <strong>akuisisi perusahaan media pertama</strong> OpenAI. OpenAI menyatakan TBPN akan terus beroperasi secara independen. Syarat keuangan tidak diungkapkan.</p>',
true),

('anthropic-confirms-claude-mythos','id','models','Model','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic Mengkonfirmasi Claude Mythos — Tapi Tidak Akan Dirilis Publik',
'Anthropic mengkonfirmasi keberadaan Claude Mythos, digambarkan sebagai model paling mampu yang pernah mereka bangun. Tidak ada rencana rilis publik. Akses terbatas pada sekitar 50 organisasi mitra melalui Proyek Glasswing.',
'<p>Anthropic secara resmi mengkonfirmasi keberadaan <strong>Claude Mythos</strong>, model yang digambarkan sebagai yang paling mampu yang pernah dibangun, tanpa rencana rilis publik.</p>
<h2>Proyek Glasswing</h2>
<p>Akses ke Claude Mythos dikelola melalui <strong>Proyek Glasswing</strong>, program terbatas untuk sekitar 50 organisasi mitra yang berfokus pada penelitian keamanan siber tingkat lanjut dan penalaran kompleks.</p>',
true),

('openai-25b-revenue-ipo-2026','id','business','Bisnis','#f5a623','Bloomberg','2026-04-13',
'OpenAI Melampaui $25 Miliar Pendapatan Tahunan, Bidik IPO 2026',
'OpenAI telah melampaui $25 miliar dalam pendapatan tahunan dan mengambil langkah awal menuju penawaran umum perdana, kemungkinan akhir 2026. Anthropic hampir menyusul dengan mendekati $19 miliar.',
'<p>OpenAI telah melampaui <strong>$25 miliar dalam pendapatan tahunan</strong> dan mengambil langkah awal menuju IPO yang mungkin dilakukan akhir 2026.</p>
<h2>Rincian Pendapatan</h2>
<p>Sebagian besar pendapatan berasal dari langganan ChatGPT dan penggunaan API. Kontrak enterprise menyumbang sekitar 40% dari total pendapatan dan merupakan segmen yang tumbuh paling cepat.</p>
<h2>Anthropic di Belakang</h2>
<p><strong>Anthropic mendekati $19 miliar</strong> dalam pendapatan tahunan. OpenAI menyelesaikan restrukturisasi awal 2026, mengkonversi menjadi perusahaan manfaat publik yang lebih konvensional.</p>',
true),

('meta-llama-4-scout-10m-context','id','models','Model','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: Konteks 10 Juta Token dengan Arsitektur MoE',
'Meta meluncurkan Llama 4 Scout dan Maverick — model Llama pertama dengan arsitektur Mixture-of-Experts. Scout memiliki 17 miliar parameter aktif pada 16 ahli (109 miliar total) dan jendela konteks 10 juta token.',
'<p>Meta meluncurkan <strong>Llama 4 Scout dan Maverick</strong> — model pertama dalam keluarga Llama yang menggunakan <strong>arsitektur Mixture-of-Experts (MoE)</strong> yang hanya mengaktifkan sebagian parameter per kueri.</p>
<h2>Scout: Dirancang untuk Konteks Panjang</h2>
<p>Llama 4 Scout memiliki <strong>17 miliar parameter aktif</strong> pada 16 ahli (109 miliar total) dan <strong>jendela konteks 10 juta token</strong> — terbesar di antara model terbuka.</p>
<h2>Penggunaan Komersial</h2>
<p>Kedua model tersedia untuk penggunaan komersial di bawah lisensi Llama Meta yang diperbarui. Arsitektur MoE mengurangi biaya inferensi sekitar 60% dibandingkan model padat dengan kualitas setara.</p>',
true),

('google-gemma-4-31b-open-model','id','models','Model','#7c6af7','Google Blog','2026-04-10',
'Google Merilis Gemma 4: Model Terbuka 31B Peringkat #3 Global',
'Google merilis Gemma 4 dalam empat varian dari 2,3 miliar hingga 31 miliar parameter. Model 31B Dense menempati peringkat ke-3 global di Arena AI di antara model terbuka — model open-source terkuat yang pernah dirilis Google.',
'<p>Google merilis <strong>Gemma 4</strong>, generasi terbaru dari keluarga model open-weight, dalam empat varian dari <strong>2,3 hingga 31 miliar parameter</strong>.</p>
<h2>Gemma 4 31B: #3 Global</h2>
<p>Model unggulan <strong>Gemma 4 31B Dense menempati peringkat ketiga global</strong> di Arena AI di antara model terbuka. Varian 14B dan 31B untuk pertama kalinya menyertakan kemampuan visi asli dalam seri Gemma.</p>',
true),

('eu-ai-act-full-enforcement','id','regulation','Regulasi','#f56565','Wired','2026-04-09',
'Undang-Undang AI UE Berlaku Penuh: Penyedia Besar Terbitkan Dokumen Kepatuhan',
'Undang-Undang AI UE mulai berlaku penuh pada Maret 2026, mengharuskan semua sistem AI di UE memenuhi persyaratan transparansi, keamanan, dan klasifikasi risiko. OpenAI, Anthropic, dan Google telah menerbitkan dokumentasi kepatuhan GPAI mereka.',
'<p>Undang-Undang AI UE <strong>mulai berlaku penuh pada Maret 2026</strong>, berlaku untuk semua sistem AI yang digunakan di UE terlepas dari lokasi pengembang.</p>
<h2>Apa yang Diwajibkan Undang-Undang</h2>
<p>Undang-undang menetapkan kerangka berbasis risiko. <strong>Sistem berisiko tinggi</strong> harus menyelesaikan penilaian kesesuaian formal, mendaftar ke basis data pusat UE, dan menerapkan pemantauan berkelanjutan.</p>
<h3>Sanksi</h3>
<p>Pelanggaran dapat mengakibatkan denda hingga <strong>€35 juta atau 7% dari omset tahunan global</strong>. Kantor AI Eropa di Brussels telah membuka penyelidikan awal terhadap beberapa perusahaan.</p>',
true),

('zhipu-glm-51-744b-open-source','id','models','Model','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI Merilis GLM-5.1 Open Source: Model MoE 744 Miliar Parameter',
'Lab AI Tiongkok Zhipu AI merilis GLM-5.1 di bawah lisensi MIT — model mixture-of-experts 744 miliar parameter dengan 40 miliar parameter aktif per terusan dan jendela konteks 200K token.',
'<p>Lab AI Tiongkok Zhipu AI merilis <strong>GLM-5.1</strong> di bawah lisensi MIT — salah satu lisensi open-source paling permisif — menjadikannya gratis untuk penggunaan apa pun termasuk penerapan komersial tanpa batasan.</p>
<h2>Skala dan Arsitektur</h2>
<p>GLM-5.1 adalah <strong>model Mixture-of-Experts 744 miliar parameter</strong> dengan 40 miliar parameter aktif per terusan dan <strong>jendela konteks 200.000 token</strong>.</p>
<h3>Mengapa Ini Penting</h3>
<p>Lisensi MIT tidak memberlakukan batasan tentang cara model digunakan, dimodifikasi, atau didistribusikan ulang. GLM-5.1 adalah model skala frontier yang paling bebas tersedia hingga saat ini.</p>',
true);
