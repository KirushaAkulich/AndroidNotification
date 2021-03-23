GRADLE_PATH=./app/build.gradle   # path to the gradle file
GRADLE_FIELD="versionName"   # field name
# logic
MANIFEST="./app/src/main/AndroidManifest.xml"

VERSIONNAME=`grep versionName ${MANIFEST} | sed 's/.*versionName\s*=\s*\"\([^\"]*\)\".*/\1/g'`
VERSIONCODE=`grep versionCode ${MANIFEST} | sed 's/.*versionCode\s*=\s*\"\([^\"]*\)\".*/\1/g'`

echo $VERSIONNAME
echo $VERSIONCODE