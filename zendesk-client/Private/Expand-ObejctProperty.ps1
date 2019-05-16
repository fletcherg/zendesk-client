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
				return ($obj.PSObject.Properties | ? { $_.MemberType -eq "NoteProperty" -AND "System.Object[]","System.Management.Automation.PSCustomObject" -contains $_.TypeNameOfValue}).Value
			}
		}
}