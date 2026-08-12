Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Bitmap]::FromFile("C:\Users\Fabian\.gemini\antigravity\scratch\rheinfinanz-website\assets\images\wave-logo.png")
$bmp = New-Object System.Drawing.Bitmap($img)
$img.Dispose()
$bgColor = $bmp.GetPixel(0,0)
$bmp.MakeTransparent($bgColor)
$bmp.Save("C:\Users\Fabian\.gemini\antigravity\scratch\rheinfinanz-website\assets\images\wave-logo-transparent.png", [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Write-Output "Done"
