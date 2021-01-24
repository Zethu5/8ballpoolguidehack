[reflection.assembly]::LoadWithPartialName( "System.Windows.Forms")
[reflection.assembly]::LoadWithPartialName( "System.Drawing")

$main_form = New-Object System.Windows.Forms.Form

$main_form.Text ="8 Ball Pool Guideline Hack by Zethus big peepee wwoohohohoho"
$main_form.Width = 1295
$main_form.Height = 740
$main_form.FormBorderStyle = "FixedDialog"
$img = [System.Drawing.Image]::Fromfile('output-onlinepngtools.png')
$main_form.BackgroundImage = $img
$main_form.AllowTransparency = $true
$main_form.TransparencyKey   = $main_form.BackColor
$main_form.AutoScale = $true
$main_form.StartPosition = [System.Windows.Forms.FormStartPosition]::Manual
$main_form.Location = New-Object System.Drawing.Point(235,235)
$main_form.TopMost = $true


$mypen = new-object Drawing.Pen limegreen
$mypen.width = 3
$mypen2 = new-object Drawing.Pen lime
$mypen2.width = 4

$main_form.add_paint({
    # 4 main sides
    $formGraphics.DrawEllipse($mypen, 10, 10, 70, 70)
    $formGraphics.DrawEllipse($mypen, 1208, 10, 70, 70)
    $formGraphics.DrawEllipse($mypen, 10, 627, 70, 70)
    $formGraphics.DrawEllipse($mypen, 1208, 627, 70, 70)

    # 2 middle ones
    $formGraphics.DrawEllipse($mypen, 615, 5, 58, 58)
    $formGraphics.DrawEllipse($mypen, 615, 645, 58, 58)
})

$main_form.add_KeyPress({
    if($_.KeyChar -eq "z") {
        $mouse_pos = [System.Windows.Forms.Cursor]::Position
        $formGraphics.Clear($main_form.BackColor)

        # 4 main sides
        $formGraphics.DrawEllipse($mypen, 10, 10, 70, 70)
        $formGraphics.DrawEllipse($mypen, 1208, 10, 70, 70)
        $formGraphics.DrawEllipse($mypen, 10, 627, 70, 70)
        $formGraphics.DrawEllipse($mypen, 1208, 627, 70, 70)

        # 2 middle ones
        $formGraphics.DrawEllipse($mypen, 615, 5, 58, 58)
        $formGraphics.DrawEllipse($mypen, 615, 645, 58, 58)

        $formGraphics.DrawEllipse($mypen , $mouse_pos.X -255, $mouse_pos.Y - 280  , 35, 35)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 70, 70)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 1220, 70)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 70, 635)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 1220, 635)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 645, 60)
        $formGraphics.DrawLine(   $mypen2, $mouse_pos.X -237 , $mouse_pos.Y - 260, 645, 645)
    } elseif($_.KeyChar -eq "x") {
        $mouse_pos = [System.Windows.Forms.Cursor]::Position
        $formGraphics.Clear($main_form.BackColor)
        $main_form.TopMost = $true

        # 4 main sides
        $formGraphics.DrawEllipse($mypen, 10, 10, 70, 70)
        $formGraphics.DrawEllipse($mypen, 1208, 10, 70, 70)
        $formGraphics.DrawEllipse($mypen, 10, 627, 70, 70)
        $formGraphics.DrawEllipse($mypen, 1208, 627, 70, 70)

        # 2 middle ones
        $formGraphics.DrawEllipse($mypen, 615, 5, 58, 58)
        $formGraphics.DrawEllipse($mypen, 615, 645, 58, 58)
    }
})
$main_form.KeyPreview = $true

$formGraphics = $main_form.createGraphics()
$main_form.ShowDialog()