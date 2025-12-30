# 🌌 Antigravity Template

Windows, Mac, Linux 모든 환경에서 심리스하게 동작하는 **AntiGraivty** 환경을 위한 표준 템플릿입니다. 이 템플릿은 AI 에이전트가 프로젝트의 컨텍스트를 더 잘 이해하고, 반복적인 작업을 자동화할 수 있도록 최적화된 규칙(Rules)과 워크플로우(Workflows)를 제공합니다.

## 🚀 주요 기능

- **Cross-Platform Compatibility**: macOS, Windows (PowerShell/CMD), Linux(Bash)에서 모두 작동하는 표준화된 명령어 가이드.
- **AI-Optimized Context**: 에이전트가 프로젝트의 구조와 개발 철학을 즉시 파악할 수 있는 Rule 설정.
- **Automated Workflows**: 반복되는 개발 태스크(이슈 생성, 브레인스토밍, 빌드 및 배포 등)의 자동화 프로세스 제공.

## 📁 폴더 구조

```text
.
├── .agent/
│   ├── rules/              # 에이전트 행동 및 품질 규칙 (.md)
│   └── workflows/          # 자동화된 워크플로우 정의 (.md)
├── .cursorrules            # 핵심 지침 및 환경 설정 (Core Rules)
└── README.md               # 프로젝트 가이드
```

## 🛠 구성 요소 상세

### 1. `.agent/rules/`
에이전트가 코드를 작성하거나 명령어를 실행할 때 준수해야 하는 **세부 규칙**들을 정의합니다.
- `cross-platform.md`: 다중 OS 대응 명령어 규칙.
- `code-style.md`: 프로젝트 공통 코드 스타일 규칙.

### 2. `.agent/workflows/`
에이전트가 실행할 수 있는 **워크플로우**들을 정의합니다. 복잡한 절차를 자동화하는 데 사용됩니다.

- **예시**:
  - `/gemini`: Gemini CLI 단독 호출 및 질의.
  - `/codex`: Codex CLI 단독 호출 및 기술 검토.
  - `/claudecode`: Claude Code CLI 단독 호출 및 리뷰.
  - `/ai-brainstorm`: 위 인터페이스들을 결합한 협업 프로세스.
  - `/mcp-install`: Node.js 기반 MCP 서버 설치 도우미.
  - `/check-env`: 환경 점검.
  - `/task`: 표준 개발 절차.

### 2. `.cursorrules` (또는 프로젝트 규칙 파일)
에이전트에게 부여할 '정체성'과 '코드 스타일', '금지 사항' 등을 정의합니다. 이를 통해 에이전트가 일관된 품질의 코드를 생산하도록 돕습니다.

- 모든 명령어는 OS를 판별하여 실행하도록 지시.
- 특정 프레임워크나 라이브러리 사용 권장 사항 포함.

## 📖 사용 방법

1. **템플릿 복사**: 본 저장소의 파일들을 새로운 프로젝트 루트 디렉토리에 복사합니다.
2. **에이전트 호출**: Antigravity 또는 AI 에이전트에게 `/` 명령어를 사용하여 워크플로우를 실행하도록 요청합니다.
   - 예: `"/check-env 실행해줘"`
3. **규칙 준수**: 에이전트는 자동적으로 `.cursorrules`에 정의된 규칙에 따라 응답하고 작업을 수행합니다.

## 🤝 기여하기

이 템플릿은 커뮤니티의 피드백을 통해 계속 진화합니다. 새로운 워크플로우 제안이나 규칙 개선 사항이 있다면 언제든 의견을 남겨주세요!

---

**Happy Coding with AntiGraivty!** 🚀
