# 🌐 Cross-Platform Execution Rule

이 규칙은 에이전트가 명령어를 실행하거나 파일 경로를 다룰 때 모든 운영체제(Windows, MacOS, Linux)에서 호환되도록 보장합니다.

## 📋 세부 지침

1. **OS 감지 우선**: 작업을 시작하기 전, 에이전트는 사용자의 OS 환경을 먼저 파악해야 합니다.
2. **명령어 분기**:
   - 디렉토리 생성: `mkdir -p` (Unix) vs `New-Item -ItemType Directory` (PowerShell)
   - 파일 목록: `ls -la` (Unix) vs `dir` (CMD/PS)
3. **경로 구분자**: 
   - 코드 내부에서는 가급적 `/` (Forward Slash)를 사용하거나, 언어별 경로 유틸리티를 사용하십시오.
