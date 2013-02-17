
# Compress-ZipFile command data
$Datas = @{
	CompressZipFileSynopsis = 'Compresse une liste de fichiers dans une archive .ZIP.'
	CompressZipFileDescription = 'Compresse une liste de fichiers dans une archive .ZIP.'
	CompressZipFileSetsAsZipEntry = 'jeux de paramètre 1'
	CompressZipFileSetsFile = 'jeux de paramètre 2'
	CompressZipFileSetsSFX = 'jeux de paramètre 3'
	CompressZipFileParametersComment = 'Commentaire associé à l''archive.'
	CompressZipFileParametersEncoding = 'Type d''encodage de l''archive.L''utilisation de la valeur par défaut est recommandé.'
	CompressZipFileParametersEncryption = 'Type de cryptage utilsé lors de l''opération de compression. Nécessite de préciser un mot de passe (cf. le paramètre Password).'
	CompressZipFileParametersFile = 'Liste du nom de fichiers à compresser. Peut être un objet fichier ou une chaîne de caractères, dans ce cas celle-ci peut contenir des caractères génériques (* , ? , [A-D] ou [1CZ]).'
	CompressZipFileParametersName = 'Nom du fichier l''archive à construire.'
	CompressZipFileParametersNotTraverseReparsePoints = 'On tiens comptes des junctions NTFS'
	CompressZipFileParametersOptions = 'Optionnel'
	CompressZipFileParametersPassthru = 'Emet le fichier d''archive dans le pipeline'
	CompressZipFileParametersPassword = 'Mot de passe utilIsé lors de la du cryptage. Nécessite de préciser un mode de cryptage (cf. le paramètre Encryption).'
	CompressZipFileParametersRecurse = 'Parcourt récursif des arborescences (todo ?) '
	CompressZipFileParametersSFX = 'Construit une archive compressée et autoextractible. La fonction génére un fichier .exe.'
	CompressZipFileParametersSortEntries = 'Les entrées sont triées' #todo tjr utilisée ?
	CompressZipFileParametersSplit = 'Découpe le fichier d''archive par segment de la taille spécifiée.'
	CompressZipFileParametersTempLocation  = 'Nom du répertoire temporaire utilsé lors de la constrution de l''archive. Par défaut récupère le contenu de la variable d''environnement %TEMP%.'
	CompressZipFileParametersUnixTimeFormat = 'Le format de date des fichiers sera celui d''Unix'
	CompressZipFileParametersWindowsTimeFormat = 'Le format de date des fichiers sera celui de Windows'
	CompressZipFileParametersZipErrorAction = 'Mode de gestion des erreur'
	CompressZipFileInputsDescription1 = 'En entrée des String ou des Fileinfo'
	CompressZipFileOutputsDescriptionFile = 'Emet un nom de fichier'
	CompressZipFileOutputsDescriptionIonicZipZipFile = 'Emet une instance de type ZipFile.'
	CompressZipFileOutputsDescriptionSFX = 'Emet le nom d''un fichier .exe.'
	CompressZipFileOutputsDescriptionSystemIOFileInfo = 'Emet une instance de type FileSystemInfo.'
	CompressZipFileNotes = ' ici les notes'
	CompressZipFileExamplesRemarks1 = 'Là les remarques de l''exemple 1. Ce code fait QUELQUECHOSE !!'
    CompressZipFileExamplesRemarks2 = 'Remarques de l''exemple 2. Plus de titre'
}

# Compress-ZipFile command help
@{
	command = 'Compress-ZipFile'
	synopsis = $Datas.CompressZipFileSynopsis
	description = $Datas.CompressZipFileDescription
	sets = @{
		AsZipEntry = $Datas.CompressZipFileSetsAsZipEntry
		File = $Datas.CompressZipFileSetsFile
		SFX = $Datas.CompressZipFileSetsSFX
	}
	parameters = @{
		Comment = $Datas.CompressZipFileParametersComment
		Encoding = $Datas.CompressZipFileParametersEncoding
		Encryption = $Datas.CompressZipFileParametersEncryption
		File = $Datas.CompressZipFileParametersFile
		Name = $Datas.CompressZipFileParametersName
		NotTraverseReparsePoints = $Datas.CompressZipFileParametersNotTraverseReparsePoints
		Options = $Datas.CompressZipFileParametersOptions
		Passthru = $Datas.CompressZipFileParametersPassthru
		Password = $Datas.CompressZipFileParametersPassword
		Recurse = $Datas.CompressZipFileParametersRecurse
		SFX = $Datas.CompressZipFileParametersSFX
		SortEntries = $Datas.CompressZipFileParametersSortEntries
		Split = $Datas.CompressZipFileParametersSplit
		TempLocation = $Datas.CompressZipFileParametersTempLocation 
		UnixTimeFormat = $Datas.CompressZipFileParametersUnixTimeFormat
		WindowsTimeFormat = $Datas.CompressZipFileParametersWindowsTimeFormat
		ZipErrorAction = $Datas.CompressZipFileParametersZipErrorAction
	}
	inputs = @(
		@{
			type = ''
			description = $Datas.CompressZipFileInputsDescription1
		}
	)
	outputs = @(
		@{
			type = 'File'
			description = $Datas.CompressZipFileOutputsDescriptionFile
		}
		@{
			type = 'Ionic.Zip.ZipFile'
			description = $Datas.CompressZipFileOutputsDescriptionIonicZipZipFile
		}
		@{
			type = 'SFX'
			description = $Datas.CompressZipFileOutputsDescriptionSFX
		}
		@{
			type = 'System.IO.FileInfo'
			description = $Datas.CompressZipFileOutputsDescriptionSystemIOFileInfo
		}
	)
	notes = $Datas.CompressZipFileNotes
	examples = @(
		@{
			title = 'Key Title. ICI c''est un titre d''exemple'
			introduction = 'Key Introduction. Là un intro de l''exemple ?'
			code = {
              dir*.txt|Compress-File c:\temp\test.zip
			}
			remarks = $Datas.CompressZipFileExamplesRemarks1
			test = { . $args[0] }
		}
		@{
			code = {
              dir*.txt|Compress-File c:\temp\test.zip
			}
			remarks = $Datas.CompressZipFileExamplesRemarks2
			test = { . $args[0] }
		}
	)
	links = @(
		@{ text = ''; URI = '' }
	)
}
