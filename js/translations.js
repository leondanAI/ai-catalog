// ─── Tool description translations ───────────────────────────────────────────
// Keyed by tool name → language code → translated description.
// Falls back to the English desc in data.js if a translation is missing.
// ─────────────────────────────────────────────────────────────────────────────

const TOOL_TRANSLATIONS = {

  'ChatGPT': {
    ru: 'Самый популярный ИИ-чат от OpenAI. GPT-4o для текста, изображений и голоса. Более 200 млн пользователей.',
    es: 'El chat de IA más popular de OpenAI. GPT-4o para texto, imágenes y voz. Usado por más de 200 millones de personas.',
    fr: 'Le chat IA le plus populaire d\'OpenAI. GPT-4o pour le texte, les images et la voix. Utilisé par plus de 200 millions de personnes.',
    de: 'Der beliebteste KI-Chat von OpenAI. GPT-4o für Text, Bilder und Sprache. Von über 200 Millionen Menschen genutzt.',
    pt: 'O chat de IA mais popular da OpenAI. GPT-4o para texto, imagens e voz. Usado por mais de 200 milhões de pessoas.',
    it: 'La chat IA più popolare di OpenAI. GPT-4o per testo, immagini e voce. Usato da oltre 200 milioni di persone.',
    he: 'הצ\'אט המוביל של OpenAI. GPT-4o לטקסט, תמונות וקול. בשימוש של 200 מיליון+ אנשים.',
    zh: 'OpenAI 最受欢迎的 AI 聊天工具。GPT-4o 支持文本、图像和语音。全球超过 2 亿用户。',
    ja: 'OpenAIが提供する最も人気のAIチャット。GPT-4oはテキスト、画像、音声に対応。2億人以上が利用。',
    ko: 'OpenAI의 가장 인기 있는 AI 채팅. GPT-4o로 텍스트, 이미지, 음성 지원. 2억 명 이상이 사용.',
    ar: 'أشهر محادثة ذكاء اصطناعي من OpenAI. GPT-4o للنصوص والصور والصوت. يستخدمه أكثر من 200 مليون شخص.',
    hi: 'OpenAI का सबसे लोकप्रिय AI चैट। GPT-4o टेक्स्ट, इमेज और वॉयस के लिए। 200 मिलियन+ लोगों द्वारा उपयोग।',
    tr: 'OpenAI\'nin en popüler yapay zeka sohbet aracı. GPT-4o metin, görsel ve ses için. 200 milyondan fazla kişi kullanıyor.',
    pl: 'Najpopularniejszy czat AI od OpenAI. GPT-4o do tekstu, obrazów i głosu. Używany przez ponad 200 milionów ludzi.',
    nl: 'De populairste AI-chat van OpenAI. GPT-4o voor tekst, afbeeldingen en spraak. Gebruikt door 200M+ mensen.',
    vi: 'Ứng dụng chat AI phổ biến nhất của OpenAI. GPT-4o cho văn bản, hình ảnh và giọng nói. Hơn 200 triệu người dùng.',
    id: 'Obrolan AI paling populer dari OpenAI. GPT-4o untuk teks, gambar, dan suara. Digunakan oleh 200 juta+ orang.',
    th: 'แชท AI ที่ได้รับความนิยมสูงสุดจาก OpenAI. GPT-4o สำหรับข้อความ รูปภาพ และเสียง มีผู้ใช้มากกว่า 200 ล้านคน',
    uk: 'Найпопулярніший ШІ-чат від OpenAI. GPT-4o для тексту, зображень і голосу. Понад 200 мільйонів користувачів.',
    ro: 'Cel mai popular chat AI de la OpenAI. GPT-4o pentru text, imagini și voce. Folosit de peste 200 de milioane de persoane.',
  },

};

// ─── helper used by renderToolCard in data.js ────────────────────────────────
function getToolDesc(tool) {
  const lang = typeof I18N !== 'undefined' ? I18N.lang : 'en';
  if (lang === 'en') return tool.desc;
  const t = TOOL_TRANSLATIONS[tool.name];
  return (t && t[lang]) ? t[lang] : tool.desc;
}
