function Get-DynamicParamExample {
    [CmdletBinding()]
    param ()

    DynamicParam {
        $RuntimeParamDictionary = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameterDictionary

        # Define a dynamic parameter only if the condition is met
        if ((Get-Date).Hour -lt 12) {
            $ParamAttributes = New-Object System.Management.Automation.ParameterAttribute
            $ParamAttributes.Mandatory = $true

            $Param = New-Object System.Management.Automation.RuntimeDefinedParameter('MorningMessage', [string], $ParamAttributes)
            $RuntimeParamDictionary.Add('MorningMessage', $Param)
        }

        return $RuntimeParamDictionary
    }

    Process {
        if ($PSBoundParameters.ContainsKey('MorningMessage')) {
            Write-Output "Good morning! Here's your message: $($PSBoundParameters['MorningMessage'])"
        } else {
            Write-Output "It's not morning, no message required."
        }
    }
}

# Example usage (only works if run before noon)
Get-DynamicParamExample -MorningMessage "Time for coffee!"
