param (
    [Alias("AppInsightsKey")]
    [Parameter(Position=0)]
    [string] $InstrumentationKey
)

if($InstrumentationKey) {
    Write-Host "AppInsights: Instrumentation Key was set globally." -ForegroundColor Yellow
    $env:AI_INSTRUMENTATION_KEY = $InstrumentationKey
}