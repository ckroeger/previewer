mmmm

{{ range $i, $a := . }}
  [ ![](images/{{ $a.Resized.Filename }}) ](images/{{ $a.Origin.Filename }})
{{ end }}