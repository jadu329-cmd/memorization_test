@echo off
echo ====================================
echo GitHub에 배포 시작
echo ====================================
echo.

REM 2026_life_plan.html을 index.html로 복사
echo [1/3] index.html 업데이트 중...
Copy-Item -Path "2026_life_plan.html" -Destination "index.html" -Force
echo ✓ 완료
echo.

REM Git에 추가
echo [2/3] Git에 파일 추가 중...
git add index.html 2026_life_plan.html
echo ✓ 완료
echo.

REM 커밋 및 푸시
echo [3/3] GitHub에 푸시 중...
git commit -m "Update 2026 life plan"
git push origin main
echo.
echo ====================================
echo ✓ 배포 완료!
echo ====================================
echo.
echo 웹사이트 주소: https://jadu329-cmd.github.io/memorization_test/
echo (1-2분 후 반영됩니다)
echo.
pause

