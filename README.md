> **פייפליין CI/CD מלא לאפליקציית WorkProfile עם Docker, Kubernetes ו־MySQL**

 🚀 סקירה כללית

ריפוזיטורי זה כולל פייפליין CI/CD מלא ומתקדם לאפליקציית WorkProfile. הפתרון מדגים תהליך שלם של פיתוח, בדיקה, והפצה ב־Docker וב־Kubernetes, עם בדיקות פשוטות מבוססות `curl`.

כולל שימוש ב:

* Docker Compose (אדריכלות של 3 שכבות)
* MySQL עם אחסון מתמשך
* GitHub Actions לפייפליין אוטומטי
* Kubernetes עם StatefulSet ו־ConfigMaps
* גרסאות סמן (semantic versioning) ופרסום תמונות לדוקר רג'יסטרי
* בדיקות סופיות עם `curl`

---

 📁 מבנה הריפוזיטורי

```
workprofile-advanced/
├── .github/workflows/ci-cd-pipeline.yml     # פייפליין GitHub Actions
├── k8s/                                     # קבצי YAML לקוברנטיס
│   ├── mysql-secret.yaml
│   ├── mysql-statefulset.yaml
│   ├── mysql-service.yaml
│   ├── workprofile-configmap.yaml
│   ├── workprofile-deployment.yaml
│   └── workprofile-service.yaml
├── docker-compose/                         # קונפיגורציה ל־Docker Compose
│   ├── docker-compose.yml
│   └── nginx.conf
├── src/                                     # קוד האפליקציה
├── Dockerfile
├── requirements.txt
└── README.md
```

---

⚙️ טכנולוגיות בשימוש

* Python Flask
* MySQL 8.0
* Docker ו־Docker Compose
* Kubernetes (כולל StatefulSet ו־PVC)
* GitHub Actions
* בדיקות `curl` פשוטות

---

 🧪 פייפליין CI/CD

שלבים ב־`.github/workflows/ci-cd-pipeline.yml`:

1. **בדיקות בסיס** – ייבוא ספריות, בדיקת קבצים נדרשים
2. **בניית האפליקציה ובדיקות** – בניית תדמית Docker והרצת בדיקות
3. **בדיקות של 3 שכבות** – הרצת Docker Compose (nginx, אפליקציה, מסד)
4. **פרסום התדמית** – דחיפה ל־Docker Hub או GHCR
5. **בדיקות Kubernetes** – יצירת `kind` cluster, בדיקות מול מסד ואפליקציה
6. **הוראות פריסה ידנית** – מדריך לפריסה מלאה בסביבת Killercoda

---

 ☸️ רכיבי Kubernetes עיקריים

                                                                                                                                                                  * StatefulSet ל־MySQL עם נפח מתמשך (2Gi)
* שירותים מסוג Headless ו־ClusterIP
* ConfigMap ו־Secret להפרדת הגדרות
* InitContainers להמתנה ל־MySQL
* בדיקות בריאות לאפליקציה ולמסד

---

 🧵 תרשים פייפליין

https://excalidraw.com/#json=vdzpStyrkjOiWQeJe_f4_,sM2VrFlbgAaff3beriIzbA

---

 🛠️ הוראות הפעלה

את הוראות הפריסה המלאות ניתן למצוא בקובץ הפייפליין (`ci-cd-pipeline.yml`) או בסוף קובץ זה – כולל Killercoda.(שלצערי עקב חוסר ב CPU לא הצלחתי להגיע לשלב זה.. הסבר ניתן לקרוא במשוב)

---

 🧾 רישיון

MIT

---

 ✍️ נוצר על ידי

אילה מנצר| משימת גמר CI/CD | שנת 2025



