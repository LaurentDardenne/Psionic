
# Expand-ZipFile command data
$Datas = @{
	ExpandZipFileSynopsis = 'Extrait des fichiers et/ou des répertoires depuis une archive Zip.'
	ExpandZipFileDescription = 'La Cmdlet Expand-ZipFile extrait les données contenues dans une archive Zip vers un répertoire de destination.'
	ExpandZipFileSetsDefault = 'Jeu de paramètre 1'
	ExpandZipFileSetsList = 'Jeu de paramètre 2'
	ExpandZipFileParametersCreate = 'Si spécifié, créé le répertoire de destination si celui-ci n''existe pas'
	ExpandZipFileParametersDestination = 'Le chemin où seront extraits les données contenues dans le fichier Zip.'
	ExpandZipFileParametersEncoding = 'Type d''encodage de l''archive.L''utilisation de la valeur par défaut est recommandé.'
	ExpandZipFileParametersExtractAction = 'Précise le comportement de la Cmdlet lorsque les données sont déjà présentes dans le répertoire de destination.'
	ExpandZipFileParametersFile = 'Le chemin du fichier Zip.'
	ExpandZipFileParametersFlatten = 'Si spécifié, les fichiers sont extraits sans arborescence.'
	ExpandZipFileParametersFrom = 'Permet de préciser le répertoire de travail au sein du fichier Zip.'
	ExpandZipFileParametersInteractive = 'Si spécifié, passe les actions de la Cmdlet en mode interractif.'
	ExpandZipFileParametersList = 'Si spécifié, liste les données contenues dans le fichier Zip.'
	ExpandZipFileParametersPassthru = 'Emet le fichier d''archive dans le pipeline.'
	ExpandZipFileParametersPassword = 'Précise, si besoin, le mot de passe nécessaire à l''extraction de l''archive.'
	ExpandZipFileParametersQuery = 'Précise un critère de recherche pour les données à extraire de l''archive Zip.`nPour plus d''informations sur l''écriture de la requête, voir la documentation de la dll Ionic (fichier d''aide .chm).'
	ExpandZipFileInputsDescription1 = 'En entrée des String ou des Fileinfo'
	ExpandZipFileOutputsDescriptionDefault = 'Emet une instance de type ZipFile.'
	ExpandZipFileOutputsDescriptionIonicZipZipFile = 'Emet une instance de type ZipFile.'
	ExpandZipFileOutputsDescriptionList = 'Emet une ou des instance(s) de type ZipFile.'
	ExpandZipFileOutputsDescriptionIonicZipZipEntry = 'Emet une instance de type ZipEntry.'
	ExpandZipFileNotes = 'ici les notes'
	ExpandZipFileExamplesRemarks1 = 'Extrait les données contenues dans une archive Zip vers un répertoire de destination.'
    ExpandZipFileExamplesRemarks2 = 'Extrait les données contenues dans des archives Zip vers un répertoire de destination.'
    ExpandZipFileExamplesRemarks3 = 'Extrait les données contenues dans une archive Zip vers un répertoire de destination.`nSeules les données correspondantes à la requête sont extraites.`nIci, des fichiers .jpg.'
    ExpandZipFileExamplesRemarks4 = 'Extrait les données contenues dans une archive Zip vers un répertoire de destination.`nSeules les données correspondantes à la requête sont extraites.`nIci, uniquement les répertoires.'
}

# Expand-ZipFile command help
@{
	command = 'Expand-ZipFile'
	synopsis = $Datas.ExpandZipFileSynopsis
	description = $Datas.ExpandZipFileDescription
	sets = @{
		Default = $Datas.ExpandZipFileSetsDefault
		List = $Datas.ExpandZipFileSetsList
	}
	parameters = @{
		Create = $Datas.ExpandZipFileParametersCreate
		Destination = $Datas.ExpandZipFileParametersDestination
		Encoding = $Datas.ExpandZipFileParametersEncoding
		ExtractAction = $Datas.ExpandZipFileParametersExtractAction
		File = $Datas.ExpandZipFileParametersFile
		Flatten = $Datas.ExpandZipFileParametersFlatten
		From = $Datas.ExpandZipFileParametersFrom
		Interactive = $Datas.ExpandZipFileParametersInteractive
		List = $Datas.ExpandZipFileParametersList
		Passthru = $Datas.ExpandZipFileParametersPassthru
		Password = $Datas.ExpandZipFileParametersPassword
		Query = $Datas.ExpandZipFileParametersQuery
	}
	inputs = @(
		@{
			type = ''
			description = $Datas.ExpandZipFileInputsDescription1
		}
	)
	outputs = @(
		@{
			type = 'Default'
			description = $Datas.ExpandZipFileOutputsDescriptionDefault
		}
		@{
			type = 'Ionic.Zip.ZipFile'
			description = $Datas.ExpandZipFileOutputsDescriptionIonicZipZipFile
		}
		@{
			type = 'List'
			description = $Datas.ExpandZipFileOutputsDescriptionList
		}
		@{
			type = 'Ionic.Zip.ZipEntry'
			description = $Datas.ExpandZipFileOutputsDescriptionIonicZipZipEntry
		}
	)
	notes = $Datas.ExpandZipFileNotes
	examples = @(
		@{
			title = 'Key Title. ICI c''est un titre d''exemple'
			introduction = 'Key Introduction. Là un intro de l''exemple ?'
			code = {
              Expand-ZipFile -File C:\Archive.zip -Destination c:\temp\
			}
			remarks = $Datas.CompressZipFileExamplesRemarks1
			test = { . $args[0] }
		}
		@{
			code = {
              Get-ChildItem D:\*.zip -recurse | 
               Expand-ZipFile c:\temp\
			}
			remarks = $Datas.CompressZipFileExamplesRemarks2
			test = { . $args[0] }
		}
		@{
			code = {
              Expand-ZipFile -File C:\Archive.zip -Destination c:\temp\ -Query 'name = *.jpg'
			}
			remarks = $Datas.CompressZipFileExamplesRemarks3
			test = { . $args[0] }
		}
		@{
			code = {
              Expand-ZipFile -File C:\Archive.zip -Destination c:\temp\ -Query 'type = D'
			}
			remarks = $Datas.CompressZipFileExamplesRemarks4
			test = { . $args[0] }
		}
	)
	links = @(
		@{ text = ''; URI = '' }
	)
}
