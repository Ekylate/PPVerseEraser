#!/bin/sh
personalDir=`cd ~;pwd`
launchingTime=`date +%Y%m%d%H%M%S`
cleanerResourcesFolder=$personalDir'/Documents/Tools4PP/Cleaner/'
outputFolder=$cleanerResourcesFolder'/outputs'
inputFolder=$cleanerResourcesFolder'/inputs'
pathToLibrary=$personalDir'/Documents/ProPresenter/Libraries/Default'
shortcutsFile=$outputFolder'/'$launchingTime'-shortcuts.txt'
listToDeleteFiles=$outputFolder'/'$launchingTime'-filesToDelete.txt'
filesInLibrary=''

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

cat $pathToFileFilter | cut -c 1-4 > $shortcutsFile

echo 'Recherche des livres correspondant aux filtres dans le dossier à analyser...'
filesInLibrary=`ls $pathToLibrary`

for tmpLibraryFile in $filesInLibrary;do
	for tmpFiltr in $shortcutsFile;do
		if [ `cat $tmpLibraryFile | grep $tmpFiltr` = $tmpLibraryFile ];then
			#Double arrow to append to file or create it if file does not exist
			cat $pathToLibrary'/'$tmpLibraryFile >> $listToDeleteFiles
		fi
	done
done

echo 'Fichier d''éléments à supprimer constitué.'
echo 'Veuillez vérifier son contenu et relancer le script pour suppression'

