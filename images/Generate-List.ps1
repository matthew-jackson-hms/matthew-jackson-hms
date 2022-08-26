$md = @(
    '## Images',
    '',
    '| Image | Preview |',
    '| --- | --- |'
)

$images = Get-ChildItem -Path '.\*.png'
ForEach($image in $images) {
    $file = $image.Name
    $md += "| [``$file``](./$file) | <img src=`"./$file`" alt=`"$file`" width=`"75`"> |"
}

$md | Out-File -FilePath 'README.md' -Encoding utf8NoBOM
