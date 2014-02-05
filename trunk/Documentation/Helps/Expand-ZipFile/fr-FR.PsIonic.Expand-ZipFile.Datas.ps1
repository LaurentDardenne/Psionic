﻿# Expand-ZipFile command data
$Datas = @{
	ExpandZipFileSynopsis = 'Extrait des fichiers et/ou des répertoires depuis une archive compressée au format Zip.'
	ExpandZipFileDescription = 'La cmdlet Expand-ZipFile permet d''extraire des fichiers et/ou des répertoires depuis une archive compressée au format Zip.'
	ExpandZipFileSetsPath = 'Les noms de fichiers peuvent contenir des caractères jokers.'
	ExpandZipFileSetsLiteralPath = 'Les noms de fichiers ne doivent pas contenir de caractère joker.'
    ExpandZipFileParametersPath = @"
Nom du fichier Zip sous la forme d'un objet de type String ou System.IO.FileInfo.
Dans le cas où c'est un type String et si celle-ci contient des jokers, alors la laison retardée (delayed script block) sur le paramètre -OutputPath 
ne se déclenchera qu'une seule fois, et pas pour chaque nom d'entrée résolue. En revanche la laison retardée sera déclenchée pour chaque objet reçu. 
"@
    ExpandZipFileParametersLiteralPath = @"
Nom du fichier Zip sous la forme d'un objet de type String ou System.IO.FileInfo.
Dans le cas où c'est un type String celui-ci ne doit pas contenir de jokers. La laison retardée (delayed script block) sur le paramètre -OutputPath 
ne se déclenchera qu'une seule fois. En revanche la laison retardée sera déclenchée pour chaque objet reçu. 
"@
	ExpandZipFileParametersOutputPath = @"
Répertoire de destination utilisé lors de l'extraction des données contenues dans une archive Zip.
Ce paramètre peut utiliser la laison retardée (delayed script block). 
"@
	ExpandZipFileParametersQuery = @"
Précise un critère de recherche pour les données à extraire de l'archive Zip.
Pour plus d'informations sur l'écriture et la syntaxe de la requête, consultez le fichier d'aide about_Query_Selection_Criteria ou la documentation de la dll Ionic (fichier d'aide .chm).
Attention, il n’y a pas de contrôle de cohérence sur le contenu de la query, par exemple celle-ci 'size <100 byte AND Size>1000 byte' ne provoquera pas d'erreur, mais aucun fichier ne sera sélectionné.
"@
	ExpandZipFileParametersFrom = 'Précise le répertoire de travail au sein du fichier Zip.'
	ExpandZipFileParametersExtractAction = 'Précise le comportement à adopter lorsque des données sont déjà présentes dans le répertoire de destination.'
    ExpandZipFileParametersPassword = 'Précise le mot de passe nécessaire à l''extraction d''une archive encryptée.'	
	ExpandZipFileParametersEncoding = 'Type d''encodage de l''archive. L''utilisation de la valeur par défaut est recommandée.'
	ExpandZipFileParametersFlatten = 'Les fichiers sont extrait sans arborescence.'
	ExpandZipFileParametersProgressID = @"
Lors de l'ouverture d'archive zip de grande taille, vous pouvez choisir d'afficher une barre de progression.
L'usage de ce paramètre crée une barre de progression pour les opérations de lecture, celle-ci sera remplacée lors des opérations d'extraction. 
la barre de progression pour les opérations de lecture n'affiche que le nombre d'entrées lues.
Si le paramètre -Query est précisé, alors la barre de progression d'extraction affichera uniquement les noms des fichiers extrait, sinon elle affichera le nom et le pourcentage de la progression.  
"@
	ExpandZipFileParametersPassthru = 'Emet dans le pipeline les entrées contenues dans l''archive zip. Attention, dans ce cas la libération des ressources par l''appel à la méthode Close() est à votre charge.'
    ExpandZipFileParametersCreate = 'Crée le répertoire de destination si celui-ci n''existe pas.'	
	ExpandZipFileInputsDescription1 = 'En entrée des String ou des Fileinfo'
	ExpandZipFileOutputsDescriptionPath = 'Emet une instance de type ZipFile.'
	ExpandZipFileOutputsDescriptionIonicZipZipFile = 'Emet une instance de type ZipFile.'
	ExpandZipFileOutputsDescriptionLiteralPath = 'Emet une ou des instance(s) de type ZipFile.'
	ExpandZipFileOutputsDescriptionIonicZipZipEntry = 'Emet une instance de type ZipEntry. todo a effacer'
	ExpandZipFileNotes = @"
Une archive Zip peut donc en théorie contenir plusieurs entrées dont chacune a un mode de compression et/ou de cryptage différent des autres. 
par contre, cette fonction suppose que le mot de passe est commun à toutes les entrées de l'archive, sinon une exception sera déclenchée lors du traitement du premier fichier possédant un mot de passe différent.
"@
	ExpandZipFileExamplesRemarks1 = 'Extrait les données contenues dans une archive Zip vers un répertoire de destination.'
    ExpandZipFileExamplesRemarks2 = 'Extrait les données contenues dans des archives Zip vers un répertoire de destination.'
    ExpandZipFileExamplesRemarks3 = @"
Extrait les données contenues dans une archive Zip vers un répertoire de destination.
Seules les données correspondantes à la requête sont extraites, ici les fichiers dont l'extension est '.jpg'.
 "@
    ExpandZipFileExamplesRemarks4 = @"
Extrait les données contenues dans une archive Zip vers un répertoire de destination.
Seules les données correspondantes à la requête sont extraites, ici uniquement les répertoires.
"@
}
