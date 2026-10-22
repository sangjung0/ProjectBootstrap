## 개요

Dev Container에서 Vite의 React TypeScript 앱을 초기 생성하고 실행하는 절차입니다.

## 복사와 치환

이 템플릿의 숨김 파일을 포함한 내용을 대상 프로젝트에 복사합니다.
파일 내용의 다음 치환 키를 직접 바꿉니다.

| 치환 키                   | 지정할 값            |
| ------------------------- | -------------------- |
| `%%PROJECT_NAME%%`        | 프로젝트·저장소 이름 |
| `%%PROJECT_DESCRIPTION%%` | 프로젝트 설명        |
| `%%GITHUB_USERNAME%%`     | GitHub 사용자 이름   |

치환 후 `%%...%%`가 남아 있는지 확인합니다.

## 호스트와 컨테이너 준비

호스트에 Git, Docker, Dev Containers를 사용할 VS Code를 준비합니다.

1. `.devcontainer/.env.example`을 `.devcontainer/.env`로 직접 복사합니다.
2. 루트 `.env.example`을 `.env`로 직접 복사하고 프로젝트 환경 변수를 설정합니다.
3. 아래 설정값의 예시 경로를 실제 호스트 경로로 바꿉니다.
4. 호스트 프로젝트 폴더에 `.agent-state` 디렉터리를 준비합니다.
5. 운영체제에 맞는 초기화 명령을 선택하고 VS Code에서 Dev Container를 엽니다.

Windows에서는 `devcontainer.json`의 기본 `initialize_command.cmd` 설정을 사용합니다.
Linux에서는 Windows용 `initializeCommand`를 주석 처리하고, Linux용 `initialize_command.sh` 설정의 주석을 해제합니다.

## 컨테이너 설정값

`.devcontainer/.env`에서 설정합니다.

| 항목                                                  | 필수 여부 | 기본값·설명                     |
| ----------------------------------------------------- | --------- | ------------------------------- |
| `AGENTS_PATH`                                         | 필수      | 호스트 개인 playbook의 절대경로 |
| `CONTAINER_NAME`                                      | 필수      | `%%PROJECT_NAME%%-dev`          |
| `CONTAINER_WORK_DIR`                                  | 필수      | `/workspaces/%%PROJECT_NAME%%`  |
| `CONTAINER_USER` / `CONTAINER_UID` / `CONTAINER_HOME` | 필수      | `root` / `0` / `/root`          |
| `CONTAINER_SHM_SIZE`                                  | 필수      | `4G`                            |
| `TZ`                                                  | 선택      | `Asia/Seoul`                    |
| `DEVELOPMENT_PORT`                                    | 선택      | `5173:5173`                     |
| `PREVIEW_PORT`                                        | 선택      | `4173:4173`                     |

## 앱 초기 생성

컨테이너 안에서 실행합니다.

```bash
bash scripts/init-react.sh
```

## 실행과 검사

```bash
pnpm dev --host 0.0.0.0
pnpm build
pnpm lint
pnpm exec tsc -b --pretty
```
