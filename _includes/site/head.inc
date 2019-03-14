<meta charset="utf-8">
<title>{% if page.title %}{{ page.title | escape }}{% else %}{{ site.title | escape }}{% endif %}</title>
<meta name="description" content="{{ page.excerpt | default: site.description | strip_html | normalize_whitespace | truncate: 160 | escape }}">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="/assets/dist/css/core.bundle.css?{{ "now" | date: "%s" }}">
<link rel="stylesheet" href="/assets/site/css/styles.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.8.5/css/froala_editor.pkgd.min.css">

<link rel="shortcut icon" href="/assets/site/images/favicon_oicr.png" type="image/x-icon">
<script src="/assets/site/js/env_theme.js?{{ "now" | date: "%s" }}"></script>
<link rel="stylesheet" href="/assets/site/css/styles.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i" rel="stylesheet">
<script>var greptchaToggle = function () { };</script>
<script src="https://www.google.com/recaptcha/api.js?render=explicit" async defer></script>
