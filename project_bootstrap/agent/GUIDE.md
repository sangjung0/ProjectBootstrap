## 개요

Ubuntu 24.04 Dev Container와 에이전트 작업 규칙을 구성합니다.

## 적용

1. 이 폴더의 내용을 숨김 파일까지 포함해 대상 프로젝트에 복사합니다.
2. 파일 내용의 `%%PROJECT_NAME%%`을 프로젝트 이름으로 바꿉니다.
3. `.devcontainer/.env`에 컨테이너 설정값을 입력하고 루트 `.env`에 프로젝트 환경 변수를 설정합니다.
4. 호스트 프로젝트 폴더에 `.agent-state` 디렉터리를 준비합니다.
5. VS Code에서 Dev Container를 엽니다.

호스트에 Git, Docker, VS Code의 Dev Containers 확장을 준비합니다.
Windows는 기본 `initialize_command.cmd`를 사용합니다.
Linux에서는 `devcontainer.json`의 Windows용 `initializeCommand`를 주석 처리하고 Linux용 설정의 주석을 해제합니다.

## 설정값

`.devcontainer/.env`에서 설정합니다.

| 항목                 | 필수 여부 | 기본값·설명                     |
| -------------------- | --------- | ------------------------------- |
| `CONTAINER_NAME`     | 필수      | `%%PROJECT_NAME%%-dev`          |
| `CONTAINER_USER`     | 필수      | `root`                          |
| `CONTAINER_UID`      | 필수      | `0`                             |
| `CONTAINER_HOME`     | 필수      | `/root`                         |
| `CONTAINER_WORK_DIR` | 필수      | `/workspaces/%%PROJECT_NAME%%`  |
| `CONTAINER_SHM_SIZE` | 필수      | `2gb`                           |
| `AGENTS_PATH`        | 필수      | 호스트 개인 playbook의 절대경로 |
