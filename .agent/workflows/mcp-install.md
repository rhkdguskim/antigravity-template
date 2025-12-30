---
description: Node.js를 사용하여 새로운 Model Context Protocol(MCP) 서버를 설치합니다.
---

이 워크플로우는 별도의 외부 스크립트 없이 Node.js를 직접 활용하여 필요한 MCP 서버를 시스템에 설치합니다.

## 🔄 설치 단계

1. **MCP 패키지 확인**
   - 설치하고자 하는 MCP 서버의 NPM 패키지 명칭을 확인합니다.
   - 예: `@modelcontextprotocol/server-everything`, `mcp-server-git`

2. **설치 명령 실행**
   - 아래의 인라인 노드 스크립트를 실행하여 설치를 진행합니다.
   
   ```bash
   node -e "
   const { execSync } = require('child_process');
   const pkg = '{PACKAGE_NAME}';
   console.log('🚀 Installing MCP: ' + pkg);
   try {
     execSync('npm install -g ' + pkg, { stdio: 'inherit' });
     console.log('\n✅ Success! Path: ' + execSync('npm config get prefix').toString().trim() + '/bin/' + pkg.split('/').pop());
   } catch (e) {
     console.error('❌ Failed: ' + e.message);
   }
   "
   ```

3. **설치 결과 확인**
   - 출력된 경로를 에이전트 설정(mcpServers)에 추가합니다.

## 💡 주요 패키지 예시
- `@modelcontextprotocol/server-postgres`
- `@modelcontextprotocol/server-github`
- `mcp-server-sqlite`
