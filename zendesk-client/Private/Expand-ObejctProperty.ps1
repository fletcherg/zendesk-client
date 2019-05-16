function Expand-ObjectProperty{
# some lame hack..
	[CmdletBinding()]
	param(
		[Parameter(ValueFromPipeline)]
		$objs
	)

	process
	{ 
		foreach ($obj in $objs) {
			return ($obj.PSObject.Properties | ? { $_.MemberType -eq "NoteProperty" -AND $_.TypeNameOfValue -like "System.Object[[]]"}).Value
		}
	}

}