﻿#
# Module manifest for module 'AppInsights'
#
# Generated by: Sven Grav
#
# Generated on: 05/12/2020
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule        = 'AppInsights.psm1'
    
    # Version number of this module.
    ModuleVersion     = '1.0.10'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID              = '4b51462c-8a75-4b08-b821-7c0834e64221'
    
    # Author of this module
    Author            = 'Sven Grav'
    
    # Company or vendor of this module
    CompanyName       = ''
    
    # Copyright statement for this module
    Copyright         = '(c) Sven Grav. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description       = 'AppInsights is a PowerShell module that provides Cmdlets to send logs and traces to Azure Application Insights.
    It comes with many helpful features to simplify the usage of Application Insights in PowerShell.
    
    Checkout the GitHub repository for documentation and samples => 
    https://github.com/svengrav/appinsights-powershell'
    
    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules     = @('bin\AppInsights.dll')
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @()
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = '*'
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()
    
    PrivateData       = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('ApplicationInsights', 'Logging', 'Azure', 'Tracing', 'Logs')
    
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/svengrav/appinsights-powershell/blob/main/LICENSE'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/svengrav/appinsights-powershell'
    
            # A URL to an icon representing this module.
            IconUri = 'https://raw.githubusercontent.com/svengrav/appinsights-powershell/main/docs/Images/AppInsights200px.png'
    
            # ReleaseNotes of this module
            # ReleaseNotes = ''
    
            # External dependent modules of this module
            # ExternalModuleDependencies = ''
    
        } 
    
    } 
    
    # HelpInfo URI of this module
    HelpInfoURI = 'https://github.com/svengrav/appinsights-powershell/tree/main/docs'
}
