# cv-detect-bus
Experiment to detect my kid's bus with computer vision.

# crontab
Cron jobs can't go sub-minute, so you run this script whenever you want to capture imagery for 30 minutes.

```
0 8 * * 1-5 /PATH/TO/capture-image.sh 30
50 15 * * 1-5 /PATH/TO/capture-image.sh 30
```