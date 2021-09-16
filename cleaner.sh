#!/bin/sh
personalDir=`cd ~;pwd`
echo "Récupération des noms de livres en cours..."
pathToLibrary=$personalDir"/Documents/ProPresenter/Libraries/Default"

pathToFileFilter=$personalDir"/Documents/Tools4PP/Cleaner/inputs/books.txt"
echo '$pathToFileFilter = '$pathToFileFilter

fileContent=`cat $pathToFileFilter`
nbFileLines=`cat $pathToFileFilter | wc -l`
echo '$fileContent ='
echo $fileContent
echo '$nbFileLines = '$nbFileLines
echo '$nbContentLines = '`echo $fileContent | wc -l`


#echo $fileContent | tr 
