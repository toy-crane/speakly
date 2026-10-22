# Speakly

Speakly는 말을 할 수 없는 상황에 놓인 사람이 입력한 글을 아이폰 스피커로 대신 말해 주는 앱이다. 마주 보는 대화에서 상대 말을 받아 적고 답변 후보를 제안하는 AI 기능이 차별점이다. 시장 조사와 첫 버전 결정은 [docs/research/](docs/research/)에 있다.

## 정해진 스택

- iOS 전용이다. 안드로이드는 만들지 않는다.
- 네이티브 Swift와 SwiftUI로 만든다. Expo와 React Native를 쓰지 않는다.
- 배포 최소 버전은 iOS 26, 대상 기기는 아이폰 12 이상이다. 기기 안 음성 인식(SpeechTranscriber)이 이 조건에서만 동작한다.
- 번들 ID는 `xyz.toycrane.Speakly`다. App Store에 올린 뒤에는 바꿀 수 없다.
- Xcode 프로젝트는 폴더 동기화 그룹을 쓴다. `Speakly/` 폴더에 Swift 파일을 추가하면 Xcode가 자동으로 포함하므로 `project.pbxproj`를 손으로 고치지 않는다.

## 빌드

```bash
xcodebuild -project Speakly.xcodeproj -scheme Speakly -destination 'generic/platform=iOS Simulator' build
```

## 한국어 글쓰기

한국어로 쓰는 채팅 답변, 사용자 안내, 문서, 커밋 메시지에 적용한다.

- **쉬운 일상어로 쓴다.** 개념어, 한자어, 외래어보다 누구나 바로 아는 말을 고른다.
- **행동 주체를 분명히 밝힌다.** 번역체 명사화와 피동은 동사로 푼다.
- **핵심부터 짧게 쓴다.** 한 문장에 한 가지 생각만 담는다.
- **글의 성격에 맞는 어미를 쓴다.** 채팅 답변과 README는 합니다체로, 결정 문서와 작업 기록은 한다체로 쓴다.
- **한 개념은 한 표현으로 부른다.**
- **문장을 줄표로 잇지 않는다.** 마침표, 쉼표, 괄호, 콜론을 쓴다.
- **기술 이름은 정확하게 보존한다.** 코드 식별자, API, 파일 경로와 제품의 공식 이름은 원문 표기를 유지한다.

## Skill 수정

- 설치한 Skill(`.agents/skills`)은 고치지 않는다. 보완할 내용은 이 지침에 덧붙인다.
- Skill은 `skills-lock.json`으로 관리한다. 최신 버전으로 올릴 때는 `update-project-skills`를 쓴다.

## 커밋 정책

- 논리적인 작업 단위를 마칠 때마다 자동으로 커밋한다.
- 하나의 커밋에는 하나의 논리적 변경만 담는다.
- Conventional Commits 형식의 메시지를 사용한다.
- 원격 저장소를 만든 뒤에는 `main`에 직접 push하지 않고, 작업 브랜치에서 PR을 연다.
