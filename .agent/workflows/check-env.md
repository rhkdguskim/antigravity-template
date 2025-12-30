---
description: 현재 개발 환경(OS, Node.js, Git 등)을 확인하고 시스템 정보를 출력합니다.
---

이 워크플로우는 사용자의 운영체제를 확인하고 필수 도구들의 설치 여부를 점검합니다.

1. **OS 정보 확인**
   - Mac/Linux인 경우: `uname -a` 실행
   - Windows인 경우: `systeminfo | findstr /B /C:"OS Name" /C:"OS Version"` 실행

2. **도구 버전 확인**
   - Node.js: `node -v`
   - NPM: `npm -v`
   - Git: `git --version`

3. **결과 요약**
   - 확인된 모든 정보를 표 형식으로 정리하여 보고합니다.
