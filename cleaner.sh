#!/bin/sh
personalDir=`cd ~;pwd`
launchingTime=`date +%Y%m%d%H%M%S`
cleanerResourcesFolder=$personalDir'/Documents/Tools4PP/Cleaner/'
outputFolder=$cleanerResourcesFolder'/outputs'
inputFolder=$cleanerResourcesFolder'/inputs'
pathToLibrary=$personalDir'/Documents/ProPresenter/Libraries/Default'

echo 'Récupération des noms de livres en cours...'
echo 'Création filtres en fonction des noms de livres en cours...'
pathToFileFilter=$inputFolder'/books.txt'
echo '$pathToFileFilter = '$pathToFileFilter

#fileContent=`cat $pathToFileFilter`
#nbFileLines=`cat $pathToFileFilter | wc -l`
# echo '$fileContent ='
# echo $fileContent
# echo '$nbFileLines = '$nbFileLines
# echo '$nbContentLines = '`echo $fileContent | wc -l`

cat $pathToFileFilter | cut -c 1-4 > $outputFolder'/'$launchingTime'-shortcuts.txt'

#echo $fileContent | tr 
 