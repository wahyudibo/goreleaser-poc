if (Get-Command "scoop" 2>$null) {
    scoop bucket add goreleaser-poc https://github.com/wahyudibo/scoop-bucket-goreleaser-poc
    scoop install goreleaser-poc
    scoop update goreleaser-poc
    Write-Output "goreleaser-poc installed with Scoop!"
    return
} else {
    Write-Host "Scoop is not installed! (https://scoop.sh)"
}