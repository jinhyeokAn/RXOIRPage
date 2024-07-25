# D 드라이브로 이동
cd /d/RXOIrPage/RXOIRPage

# Git 저장소 초기화 (이미 초기화되어 있으면 생략)
git init

# Git LFS 설치 및 초기화
git lfs install

# .mp4 파일 형식 추적
git lfs track "*.mp4"

#!/bin/bash
# 모든 mp4 파일을 추적
find . -type f -name "*.mp4" -exec git lfs track "{}" \;

# 모든 파일 추가
git add .

# 커밋
git commit -m "Add large files with Git LFS"

# 원격 저장소에 푸시
git push origin main
