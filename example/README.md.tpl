# images
Ein Repos für Grafiken, Logos etc.

{{ range $i, $a := . }}
  {{ $i }}
{{ end }}

{{ range $i, $a := . }}
  [ ![](images/{{ $a.Resized.Filename }}) ](images/{{ $a.Origin.Filename }})
{{ end }}
