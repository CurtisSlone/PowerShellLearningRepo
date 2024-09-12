try {
    $files = (Get-ChildItem -Path *.csv)
    if (!($files)) {
        Throw "There are no CSV files here!"
    }
    else {
        #do something with the files
    }
}
catch {
    Write-Output $_.tostring()
}