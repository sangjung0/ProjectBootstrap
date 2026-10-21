## 설명

데브 컨테이너 만든 다음

```bash
npm create vite@latest . -- --template react-ts
pnpm install vite-tsconfig-paths @vanilla-extract/vite-plugin
# tsconfig.json에 아래 추가
#   "compilerOptions": {
#     "baseUrl": ".",
#     "paths": {
#       "@/*": ["src/*"]
#     }
#   }

# tsconfig.app.json에 아래 추가
#    /* Path */
#    "paths": {
#      "@/*": ["./src/*"]
#    }

```
