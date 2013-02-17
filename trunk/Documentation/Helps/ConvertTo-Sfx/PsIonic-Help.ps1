
# ConvertTo-Sfx command data
$Datas = @{
	ConvertToSfxSynopsis = 'Convertit une archive .ZIP en une archive autoextractible.'
	ConvertToSfxDescription = @"
La conversion d'une archive .ZIP en une archive autoextractible intégre dans le fichier généré le traitement de décompression.
Vous pouvez également préciser une ligne de commande à éxécuter une fois la décompression de tous les fichiers terminée.     
"@
	ConvertToSfxSets__AllParameterSets = ''
	ConvertToSfxParametersComment = 'Commentaire associé à l''archive.'
	ConvertToSfxParametersSaveOptions = 'Options de génération créés via la fonction New-ZipSfxOptions.'
    ConvertToSfxParametersReadOptions = 'Options appliquées lors de la lecture de l''archive (.zip) à partir de laquel on génére une archive autoexetractible (.exe). Options créés via la fonction New-ReadOptions.'
	ConvertToSfxParametersPassthru = 'Renvoi le fichier généré sous forme d''objet et pas seulement son nom.'
	ConvertToSfxParametersZipFile = 'Nom du fichier de l''archive à convertir.'
	ConvertToSfxInputsDescription1 = @"
System.Management.Automation.PSObject
Vous pouvez émettre n'importe quel objet dans le pipeline, sous réserve que sa tranformation en String contienne un nom de fichier.
"@
	ConvertToSfxOutputsDescriptionSystemIOFileInfo = @"
 Aucun ou System.IO.FileInfo
 
 Lorsque vous utilisez le paramètre PassThru, ConvertTo-Sfx renvoi l'objet fichier de l'archive autoextractible. Sinon cette fonction ne génére aucune sortie.
"@ 
	ConvertToSfxNotes = ''
	ConvertToSfxExamplesRemarks1 = ''
}

# ConvertTo-Sfx command help
@{
	command = 'ConvertTo-Sfx'
	synopsis = $Datas.ConvertToSfxSynopsis
	description = $Datas.ConvertToSfxDescription
	parameters = @{
		Comment = $Datas.ConvertToSfxParametersComment
		SaveOptions = $Datas.ConvertToSfxParametersSaveOptions
        ReadOptions=ConvertToSfxParametersReadOptions
		Passthru = $Datas.ConvertToSfxParametersPassthru
		ZipFile = $Datas.ConvertToSfxParametersZipFile
	}
	inputs = @(
		@{
			type = ''
			description = $Datas.ConvertToSfxInputsDescription1
		}
	)
	outputs = @(
		@{
			type = 'System.IO.FileInfo'
			description = $Datas.ConvertToSfxOutputsDescriptionSystemIOFileInfo
		}
	)
	notes = $Datas.ConvertToSfxNotes
	examples = @(
		@{
			code = {
			}
			remarks = $Datas.ConvertToSfxExamplesRemarks1
			test = { . $args[0] }
		}
	)
	links = @(
		@{ text = ''; URI = '' }
	)
}
