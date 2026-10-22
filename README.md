<div align="center">
  <h1>Project Bootstrap</h1>

<a href="https://github.com/sangjung0">sangjung0</a>

  <br />

  <a href="https://github.com/sangjung0/project_bootstrap/contributors">
    <img src="https://contrib.rocks/image?repo=sangjung0/project_bootstrap" />
  </a>

  <br />
  <br />
</div>

## 개요

새 프로젝트의 초기 파일과 개발환경에 개인의 작업 방식과 선택을 담는 저장소입니다.
개발환경, 편집기 설정, 언어별 기본 구성을 반복해서 손으로 맞추는 일을 줄입니다.

## 템플릿 선택

| 템플릿             | 제공 범위                                                     | 선택 기준                      |
| ------------------ | ------------------------------------------------------------- | ------------------------------ |
| `base`             | 공통 편집기·Git 설정, README                                  | 언어와 실행환경을 직접 정할 때 |
| `devcontainer`     | Ubuntu Dev Container                                          | Ubuntu 작업환경만 필요할 때    |
| `agent`            | Ubuntu Dev Container, 에이전트 규칙·작업 공간                 | 에이전트 작업환경이 필요할 때  |
| `python/base`      | Dev Container, uv, 실행 패키지, 테스트·정적 분석              | 일반 Python 프로젝트           |
| `python/gpu`       | Python 기본 구성과 NVIDIA GPU 연결                            | CUDA 개발환경이 필요할 때      |
| `typescript/react` | Dev Container, Node.js·pnpm, VS Code 작업, 앱 초기화 스크립트 | React 앱을 Vite로 생성할 때    |

## 사용 방법

1. 용도에 맞는 템플릿 하나를 선택합니다.
2. 숨김 파일을 포함한 템플릿 내용을 대상 프로젝트에 복사합니다.
3. 파일 내용과 디렉터리 이름의 치환 키를 직접 바꿉니다.
4. 템플릿에 포함된 GUIDE.md에 따라 환경을 준비합니다.

복사 절차는 [GUIDE.md](GUIDE.md)를 참고합니다.

## 템플릿별 가이드

- [공통 파일](project_bootstrap/base/GUIDE.md)
- [Ubuntu Dev Container](project_bootstrap/devcontainer/GUIDE.md)
- [Agent](project_bootstrap/agent/GUIDE.md)
- [Python](project_bootstrap/python/base/GUIDE.md)
- [Python GPU](project_bootstrap/python/gpu/GUIDE.md)
- [React](project_bootstrap/typescript/react/GUIDE.md)
