[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')

$main1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$btn_exit = $null
[System.Windows.Forms.Button]$btn_create = $null
[System.Windows.Forms.Button]$btn_delete_rocket_drive = $null
[System.Windows.Forms.Button]$btn_reset_rocket_drive = $null
[System.Windows.Forms.PictureBox]$pictureBox1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'main1.resources.ps1')
$btn_exit = (New-Object -TypeName System.Windows.Forms.Button)
$btn_create = (New-Object -TypeName System.Windows.Forms.Button)
$btn_delete_rocket_drive = (New-Object -TypeName System.Windows.Forms.Button)
$btn_reset_rocket_drive = (New-Object -TypeName System.Windows.Forms.Button)
$pictureBox1 = (New-Object -TypeName System.Windows.Forms.PictureBox)
([System.ComponentModel.ISupportInitialize]$pictureBox1).BeginInit()
$main1.SuspendLayout()
#
#btn_exit
#
$btn_exit.BackgroundImage = ([System.Drawing.Image]$resources.'btn_exit.BackgroundImage')
$btn_exit.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Zoom
$btn_exit.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$btn_exit.FlatAppearance.BorderSize = [System.Int32]0
$btn_exit.FlatAppearance.MouseDownBackColor = [System.Drawing.SystemColors]::Control
$btn_exit.FlatAppearance.MouseOverBackColor = [System.Drawing.SystemColors]::Control
$btn_exit.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_exit.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]736,[System.Int32]2))
$btn_exit.Name = [System.String]'btn_exit'
$btn_exit.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]42,[System.Int32]43))
$btn_exit.TabIndex = [System.Int32]0
$btn_exit.Text = [System.String]'X'
$btn_exit.UseVisualStyleBackColor = $true
$btn_exit.add_Click($btn_exit_Click)
#
#btn_create
#
$btn_create.FlatAppearance.BorderSize = [System.Int32]0
$btn_create.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_create.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$btn_create.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]183,[System.Int32]465))
$btn_create.Name = [System.String]'btn_create'
$btn_create.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_create.TabIndex = [System.Int32]1
$btn_create.Text = [System.String]'Create'
$btn_create.UseVisualStyleBackColor = $true
$btn_create.add_Click($btn_create_Click)
#
#btn_delete_rocket_drive
#
$btn_delete_rocket_drive.FlatAppearance.BorderSize = [System.Int32]0
$btn_delete_rocket_drive.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_delete_rocket_drive.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$btn_delete_rocket_drive.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]352,[System.Int32]465))
$btn_delete_rocket_drive.Name = [System.String]'btn_delete_rocket_drive'
$btn_delete_rocket_drive.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_delete_rocket_drive.TabIndex = [System.Int32]2
$btn_delete_rocket_drive.Text = [System.String]'Delete'
$btn_delete_rocket_drive.UseVisualStyleBackColor = $true
$btn_delete_rocket_drive.add_Click($btn_delete_rocket_drive_Click)
#
#btn_reset_rocket_drive
#
$btn_reset_rocket_drive.FlatAppearance.BorderSize = [System.Int32]0
$btn_reset_rocket_drive.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_reset_rocket_drive.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$btn_reset_rocket_drive.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]524,[System.Int32]465))
$btn_reset_rocket_drive.Name = [System.String]'btn_reset_rocket_drive'
$btn_reset_rocket_drive.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_reset_rocket_drive.TabIndex = [System.Int32]3
$btn_reset_rocket_drive.Text = [System.String]'Reset'
$btn_reset_rocket_drive.UseVisualStyleBackColor = $true
$btn_reset_rocket_drive.add_Click($btn_reset_rocket_drive_Click)
#
#pictureBox1
#
$pictureBox1.Dock = [System.Windows.Forms.DockStyle]::Fill
$pictureBox1.Image = ([System.Drawing.Image]$resources.'pictureBox1.Image')
$pictureBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$pictureBox1.Name = [System.String]'pictureBox1'
$pictureBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]780,[System.Int32]500))
$pictureBox1.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage
$pictureBox1.TabIndex = [System.Int32]4
$pictureBox1.TabStop = $false
#
#main1
#
$main1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]780,[System.Int32]500))
$main1.Controls.Add($btn_reset_rocket_drive)
$main1.Controls.Add($btn_delete_rocket_drive)
$main1.Controls.Add($btn_create)
$main1.Controls.Add($btn_exit)
$main1.Controls.Add($pictureBox1)
$main1.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$main1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$main1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]780,[System.Int32]500))
$main1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]780,[System.Int32]500))
$main1.Name = [System.String]'main1'
$main1.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
([System.ComponentModel.ISupportInitialize]$pictureBox1).EndInit()
$main1.ResumeLayout($false)
Add-Member -InputObject $main1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $main1 -Name btn_exit -Value $btn_exit -MemberType NoteProperty
Add-Member -InputObject $main1 -Name btn_create -Value $btn_create -MemberType NoteProperty
Add-Member -InputObject $main1 -Name btn_delete_rocket_drive -Value $btn_delete_rocket_drive -MemberType NoteProperty
Add-Member -InputObject $main1 -Name btn_reset_rocket_drive -Value $btn_reset_rocket_drive -MemberType NoteProperty
Add-Member -InputObject $main1 -Name pictureBox1 -Value $pictureBox1 -MemberType NoteProperty
Add-Member -InputObject $main1 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent

$btn_reset_rocket_drive_Click = {

}

$btn_delete_rocket_drive_Click = {

}

$btn_create_Click = {

}


. (Join-Path $PSScriptRoot 'main1.designer.ps1')

$main1.ShowDialog()
