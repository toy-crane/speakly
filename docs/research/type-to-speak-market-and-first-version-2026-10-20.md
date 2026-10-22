# 말을 못 할 때 대신 말해 주는 앱: 시장 리서치와 첫 버전 결정

이 문서는 '입력한 글을 휴대폰 스피커로 대신 말해 주는 앱'의 사업성을 조사하고, 그 결과를 바탕으로 첫 버전의 방향을 정한 기록입니다. 리서치는 2026년 10월 19–20일에 진행했고, 결정도 그 기간에 내렸습니다. 개발 방식과 앱 이름은 2026년 10월 22일에 추가로 정했습니다. 숫자는 그 시점에 공개된 자료에서 가져왔으며, 직접 계산한 추정치는 따로 표시했습니다.

## 한눈에 보기

- **입력한 글을 대신 말해 주는 기능은 휴대폰에 이미 무료로 들어 있습니다.** 아이폰의 실시간 말하기는 한국어를 지원하고, 마주 보는 대화와 통화에서 모두 동작합니다. 갤럭시의 '텍스트로 전화 받기'도 걸려 온 전화와 거는 전화를 모두 지원합니다.
- **한국 시장만으로는 월 순수익 1,000만 원에 미치지 못합니다.** 한국 1·2위 대신 말하기 앱을 합쳐도 신규 설치가 한 달에 약 470건입니다.
- **시장을 해외로 넓히면 월 순수익 1,000만 원은 이 분야에서 세계 1–2위 앱이 버는 수준입니다.**
- **차별점은 목소리가 아니라 AI입니다.** 상대 말을 듣고 답변 후보를 제안하는 기능과 짧게 입력한 글을 완성된 문장으로 바꿔 주는 기능은 두 OS 어디에도 없습니다.
- **AI 비용은 크지 않습니다.** 음성 인식을 기기 안에서 처리하면 많이 쓰는 사용자도 비용이 월 0–1.4달러입니다. 비용을 키우는 것은 클라우드 실시간 음성 인식과 고급 클라우드 음성입니다.

## 확정한 결정

| 항목 | 결정 |
|---|---|
| 앱 이름 | Speakly(번들 ID `xyz.toycrane.Speakly`). 미국 App Store에 "Speakly: Learn Languages Fast"와 "Speakly: AI Voice Keyboard"가 이미 있어서, 출시 전에 표시 이름을 다시 검토함 |
| 대상 | 잠시든 오래든 말을 할 수 없는 상황에 놓인 사람 |
| 시장과 플랫폼 | 해외 영어권 먼저, iOS만(안드로이드는 만들지 않음) |
| 개발 방식 | 네이티브 Swift(SwiftUI). Expo는 쓰지 않음 |
| 무료 기능 | 직접 입력한 글을 소리로 말하기, 자주 쓰는 문구 |
| AI 기능 | 상대 말을 듣고 답변 후보 3개 제안(마주 보는 대화에서만), 짧게 입력한 글을 완성된 문장으로 바꿔 주기 |
| 목소리 | 기기 안 음성으로 시작하고, 품질이 부족하면 교체 |
| 수익 | AI 기능은 하루 10회 무료(답변 제안 한 번과 문장 바꾸기 한 번을 각각 1회로 셈), 그 이상은 구독 |
| 통화 | 첫 버전에는 통화 중 말하기를 넣지 않고, 전화할 때는 아이폰 실시간 말하기를 안내 |

## 임시로 정해 둔 가정

- 요금은 주간 5.99달러, 연간 59.99달러, 평생 149.99달러입니다. 출시 뒤 결제 화면 실험으로 조정합니다.
- 첫 버전에서는 상대 말을 받아 적을 때 Apple의 기기 안 음성 인식만 씁니다.
- 답변 AI는 Apple Intelligence를 지원하는 아이폰에서는 기기 안 AI를, 나머지 아이폰에서는 클라우드 소형 모델을 씁니다.
- 지원 기기는 iOS 26 이상을 쓰는 아이폰 12 이상입니다. 기기 안 음성 인식이 이 조건에서만 동작하기 때문입니다.
- 미국 영어 사용자는 Apple 개인 음성(내 목소리)을 쓸 수 있게 합니다.
- 대화 내용과 음성은 저장하지 않고, 듣는 동안에는 화면에 "받아 적는 중"이라고 표시합니다.
- 광고는 넣지 않습니다. 주간 구독자에게는 2주 차에 해지 방법을 안내하는 알림을 보냅니다.
- 하루 할당량을 다 쓰면 결제 화면을 보여 주지만, 직접 입력해서 말하는 기능은 계속 쓸 수 있습니다.

## 나중에 정할 일

- **고급 클라우드 음성:** 청취 비교 시험 결과를 보고 넣을지 정합니다. 넣는다면 구독 안에서 월 10만 자 상한(Inworld TTS-2 기준 약 2.5달러)을 두고, 저장한 문구는 한 번 만든 소리를 다시 씁니다.
- **연간·평생 요금제와 클라우드 음성:** 연 59.99달러 요금제에서 순매출 가운데 15%에 해당하는 금액은 월 약 0.64달러뿐입니다. 고급 음성을 넣는다면 연간·평생 이용자에게 어디까지 줄지 다시 정해야 합니다.
- **클라우드 음성 인식 보조:** 약국·카페 현장 녹음 시험 결과를 보고 넣을지 정합니다.
- **통화 중 말하기:** 통화 실험을 거친 뒤 다음 버전에서 검토합니다.
- **한국어 출시:** 기기 안 한국어 음성의 품질이 낮아서 클라우드 음성이 기본이 될 가능성이 높습니다. 그때 비용을 다시 계산해야 합니다.
- **병원·언어치료실 판매(B2B)**

## 만들기 전에 해 볼 시험

1. Kokoro(앱 안에 넣을 수 있는 무료 음성 모델)를 A15–A19 칩 아이폰에서 돌려, 첫 소리가 나오기까지의 시간과 메모리 사용량을 잽니다.
2. 목표 사용자 5–10명에게 어떤 음성인지 알리지 않고 Apple 고품질 음성, Kokoro, Inworld, ElevenLabs Flash를 들려주고 가장 마음에 드는 음성을 고르게 합니다.
3. 일반 전화와 인터넷 전화 앱 하나에서, 앱이 백그라운드에 있을 때도 앱 소리가 통화에 들어가는지 확인합니다.
4. 약국과 카페에서 1–2m 떨어져 녹음한 대화 30–50개로 Apple 음성 인식과 클라우드 음성 인식 서비스 두 곳의 정확도를 비교합니다.

## 리서치 근거

### 휴대폰 기본 기능

| 기능 | 하는 일 | 한국어 |
|---|---|---|
| 아이폰 실시간 말하기 | 입력한 글을 마주 보는 대화와 전화·FaceTime 통화에서 말해 줌 | 지원 |
| 아이폰 개인 음성 | 내 목소리를 녹음해 합성 음성으로 사용하고, 허락받은 앱도 사용 가능 | 미지원(미국 영어, 중국어, 멕시코 스페인어만) |
| 갤럭시 텍스트로 전화 받기 | 걸려 온 전화와 거는 전화에서 입력한 글을 대신 말하고, 18문장을 읽으면 내 목소리로 말함 | 지원 |

- 안드로이드에는 마주 보는 대화에서 쓰는 대신 말하기 기본 기능이 없습니다. 픽셀은 통화 중에만 입력한 글을 읽어 줍니다.
- iOS 18.2부터는 사용자가 '통화에 오디오 추가'를 켜고 앱에 권한을 주면, 앱이 내는 소리가 전화, FaceTime, 대부분의 인터넷 전화 통화에 들어갑니다. Apple 공식 문서로 확인했습니다.
- 반대로 앱은 통화 상대의 목소리를 들을 수 없습니다. 그래서 통화 중에는 답변 제안이 불가능합니다. 안드로이드에서는 통화에 소리를 넣는 기능과 통화 소리를 듣는 기능이 모두 시스템 앱 전용입니다.

### 개발 방식

- Expo에도 핵심 기능을 JavaScript에서 쓰게 해 주는 패키지가 있습니다. Callstack의 `@react-native-ai/apple`은 SpeechTranscriber와 Foundation Models를, `expo-ai`는 Foundation Models를, `expo-speech`는 AVSpeechSynthesizer를 감쌉니다.
- 다만 이 앱에 꼭 필요한 일부 기능은 쓸 만한 패키지가 없어서 Swift로 직접 연결해야 합니다. `expo-speech`에는 개인 음성 권한 요청 기능이 없고, Kokoro를 넣으려면 네이티브 모듈이 필요합니다. 무음 모드에서도 소리를 내는 설정은 `expo-audio`의 `setAudioModeAsync({ playsInSilentMode: true })`로 할 수 있습니다. 또 `expo-ai`는 알파 버전이고, 음성 인식 패키지는 서드파티뿐입니다.
- Expo를 쓰면 얻는 가장 큰 이점은 화면과 결제 코드를 안드로이드와 함께 쓰는 것입니다. 안드로이드를 만들지 않기로 했으므로 이 이점이 사라집니다.
- 듣기와 말하기가 번갈아 일어나는 앱이라 오디오 세션을 한곳에서 관리해야 합니다. 네이티브로 만들면 JavaScript와 Swift를 잇는 작업 없이 Apple 예제 코드를 그대로 쓸 수 있습니다.

### 경쟁 앱과 수요

아래 표의 수치는 AppGoblin 추정치(2026년 10월)입니다. AppGoblin은 매출을 '1만 달러 미만/이상' 같은 구간으로만 보여 줍니다.

| 앱 | 시장 | 월 신규 설치 | 월 매출 추정 |
|---|---|---|---|
| 대신말해줘(안드로이드, 무료·광고) | 한국 | 약 320건 | 1만 달러 미만 |
| 말을 해줘(iOS) | 한국 | 약 150건 | 정보 없음 |
| Text to Speech: Speak for Me(iOS, 주 9.99달러) | 해외 | 약 1,500건 | 1만 달러 미만 |
| Spoken(안드로이드, 연 99달러) | 해외 | 약 1,800건 | 1만 달러 미만 |
| Speech Assistant AAC(안드로이드, iOS는 24.99달러) | 해외 | 약 8,600건 | 1만 달러 미만 |
| 참고: Text to Speech(글 읽어 주기 앱, 안드로이드) | 해외 | 약 8만 7,000건 | 1만 달러 이상 |

- Speak for Me는 기본 대화만 무료이고, 평점 4.7점(평가 961개)을 유지합니다.
- 한국에서 상대 말을 듣고 답변을 제안하는 앱은 '소금빵'(2026년 5월 출시, 월 9,900원)이 유일합니다. 출시 후 다섯 달 동안 받은 평가는 두 스토어를 합쳐 11개였습니다.
- 해외에 출시된 글자 입력 방식 앱 중에서는 상대 말을 듣고 답변을 제안하는 앱을 찾지 못했습니다. Spoken은 이 기능을 개발 중이라고 밝혔습니다.
- 이 분야 회사는 대부분 결국 다른 회사에 인수됩니다. PRC-Saltillo가 Avaz(2025년 10월)와 Therapy Box의 앱들(2026년 1월)을 인수했습니다.
- 큰돈은 앱이 아니라 보험 처방으로 팔리는 전용 기기에 몰려 있습니다. Dynavox의 2025년 매출은 약 2.5억 달러입니다.

### 매출 추정(직접 계산)

- 월 순수익 1,000만 원을 내려면, 스토어 수수료 15%를 떼기 전 월 매출이 약 8,400달러 필요합니다(1달러 = 1,400원 가정).
- 처음부터 결제를 요구하는 방식(하드 페이월)이었다면 매달 약 2,700건만 설치되어도 월 순수익 1,000만 원을 낼 수 있었을 것입니다. 결정한 '무료 + 하루 할당량' 방식에서는 매달 약 6,000–2만 2,000건 설치가 필요합니다.
- 매달 3,000건이 설치되면 '무료 + 하루 할당량' 방식의 월 순수익은 약 140만–530만 원입니다.
- 한국만 대상으로 하면, 하드 페이월로 한국 수요를 모두 확보해도 월 순수익은 약 350만–700만 원입니다.

### AI 비용

- 답변 제안을 한 번 받을 때마다 AI에 약 1,000토큰 분량의 맥락을 보냅니다. 그 구성은 지시문 약 250토큰, 사용자 정보 약 150토큰, 앞부분 대화 요약 약 100토큰, 최근 3–4분 대화 약 500토큰입니다. AI는 답변 후보 3개(약 100토큰)를 돌려줍니다.
- 많이 쓰는 사용자(하루 답변 제안 300번, 상대가 말하는 시간 하루 1시간)의 월 비용은 다음과 같습니다.

| 방식 | 월 비용 |
|---|---|
| 모두 클라우드, 실시간 음성 인식 | 약 31달러 |
| 모두 클라우드, 상대 말이 끝난 뒤 음성 인식 | 약 6달러 |
| 음성 인식은 기기 안, 답변은 클라우드 소형 모델 | 약 0.8–1.4달러 |
| 모두 기기 안 | 0달러 |

- 맥락을 1시간 대화 전체(약 1만 토큰)로 늘려도, 겹치는 앞부분을 캐시하면 비용은 월 약 0.7–1달러로 추정됩니다.
- 아이폰 기기 안 AI 모델은 한 번에 4,096토큰까지만 다룹니다. 그래서 '최근 대화 + 앞부분 요약' 방식이 필요합니다.

### 합성 음성(TTS)

- Artificial Analysis 음성 순위(2026년 10월, Elo)는 ElevenLabs v4 Turbo 1329, Inworld TTS-2 1262, Gemini 3.8 Flash-Lite TTS 1248, ElevenLabs Flash v2.5 1078, Kokoro 1064입니다. ElevenLabs v4 Turbo와 Kokoro의 점수 차이는 청취자가 약 82% 확률로 ElevenLabs를 고르는 정도이고, Kokoro와 Flash v2.5는 청취자의 선택이 거의 반반으로 갈립니다.
- 많이 쓰는 사용자(월 36만 자)의 월 음성 비용은 ElevenLabs Flash·v4 Turbo 약 14.4달러, Inworld TTS-2 약 9달러(요금제에 따라 4.5달러), 기기 안 음성 0달러입니다.
- Apple 고품질 음성은 사용자가 설정에서 직접 내려받아야 하고, Siri 음성은 앱에서 쓸 수 없습니다.
- Kokoro는 약 80MB이고 한국어를 지원하지 않습니다. 아이폰 13 Pro에서 실시간의 3.3배 속도로 동작했습니다. 일부 발음 변환 모듈이 GPL 라이선스라 주의해야 합니다.
- 기기 안 한국어 음성은 Apple이 예전 방식으로 만든 음성뿐이고, 경량 한국어 음성 모델 Supertonic은 개발이 중단되었습니다.
- Hume은 2026년 11월 13일에 음성 서비스를 종료합니다.

### 음성 인식(STT)

- Apple SpeechTranscriber는 iOS 26 이상, 아이폰 12 이상에서 무료로 동작하고 영어와 한국어를 지원합니다.
- Mac에서 측정한 SpeechTranscriber의 단어 오류율은 깨끗한 음성에서 1.8–2.1%로 Whisper large-v3 수준이고, 실제 통화 녹음에서 12.0%로 클라우드 서비스 7곳(9.5–18.6%) 범위 안입니다.
- SpeechTranscriber는 약 이름 같은 특수 단어를 미리 등록하는 기능이 없고, 상대 말이 끝난 시점을 알려 주지 않습니다. 다른 연구에서는 거리와 소음 때문에 오류가 두 배까지 늘었습니다.
- 클라우드 보조 후보는 AssemblyAI입니다. Apple 음성 인식이 잘못 알아들은 부분만 골라 다시 보내는 방식은 시간당 0.21달러이고, 실시간 Universal-3.6 Pro는 시간당 0.45달러이며 멀리서 말할 때 오류율은 3.2%입니다.
- App Store 규정상 녹음할 때는 명시적인 동의와 녹음 중임을 알리는 표시가 필요합니다. 미국 캘리포니아주는 대화를 녹음할 때 모든 당사자의 동의를 요구합니다.

### 구독 통계(RevenueCat 2026)

- 설치 후 35일 안에 결제하는 비율은 하드 페이월 10.7%, 무료 위주 방식 2.1%(상위 25%는 4.5% 이상)입니다.
- 설치 1건당 첫 60일 동안 발생한 매출은 하드 페이월 3.09달러, 무료 위주 방식 0.38달러입니다.
- 체험 기간별 결제 전환율은 4일 이하 25.5%, 5–9일 37.4%, 17–32일 42.5%입니다.
- 요금 중앙값은 주간 약 5–6달러, 연간 34.80달러입니다. 구독 앱의 23%가 평생 이용권도 함께 팝니다.

## 출처

- [Apple 실시간 말하기](https://support.apple.com/105018), [Apple 기능별 지원 언어](https://www.apple.com/ios/feature-availability/), [Apple 개인 음성](https://support.apple.com/en-us/104993)
- [Apple: 통화에 합성 음성 추가하기](https://developer.apple.com/documentation/avfaudio/adding-synthesized-speech-to-calls)
- [Samsung 텍스트로 전화 받기](https://www.samsung.com/us/support/answer/ANS10003690)
- AppGoblin: [대신말해줘](https://appgoblin.info/apps/com.ssongshrimptruck.tistory.readforme), [말을 해줘](https://appgoblin.info/apps/1568263379), [Speak for Me](https://appgoblin.info/apps/1563068826), [Spoken](https://appgoblin.info/apps/com.spoken.app), [Speech Assistant AAC](https://appgoblin.info/apps/nl.asoft.speechassistant), [Text to Speech](https://appgoblin.info/apps/com.alpaca.android.readout)
- [소금빵 출시 기사(머니투데이)](https://www.mt.co.kr/amp/future/2026/05/27/2026052708274068104)
- [Dynavox 2025년 실적](https://dynavoxgroup.com/blogs/press-releases/dynavox-group-year-end-report-2025), [PRC-Saltillo의 Avaz 인수](https://tools.prnewswire.com/en-us/live/20823/release/20251023EN04505)
- [Artificial Analysis 음성 순위](https://artificialanalysis.ai/text-to-speech/leaderboard), [Inworld 가격](https://inworld.ai/pricing), [ElevenLabs 가격](https://elevenlabs.io/pricing/api)
- [OpenAI 가격](https://developers.openai.com/api/docs/pricing), [Gemini API 가격](https://ai.google.dev/gemini-api/docs/pricing)
- [음성 인식 비교(verliapp)](https://github.com/verliapp/stt-benchmark), [Whisper 논문](https://arxiv.org/pdf/2212.04356), [AssemblyAI 가격](https://www.assemblyai.com/pricing)
- [RevenueCat State of Subscription Apps 2026](https://www.revenuecat.com/state-of-subscription-apps)
- [Expo AI 문서](https://docs.expo.dev/versions/unversioned/sdk/ai/), [Expo Speech 문서](https://docs.expo.dev/versions/latest/sdk/speech/), [Expo Audio 문서](https://docs.expo.dev/versions/unversioned/sdk/audio/), [Callstack: React Native에서 Apple SpeechAnalyzer 쓰기](https://www.callstack.com/blog/on-device-speech-transcription-with-apple-speechanalyzer)
- [Google SpeakFaster](https://research.google/blog/speakfaster-revolutionizing-communication-for-people-with-severe-motor-impairments/)
