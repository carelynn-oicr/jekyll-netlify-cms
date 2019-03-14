---
layout: default
---
{% assign d = site._modules | where:"slug", "nav" | first %}
<div id="main">
    <!-- Top of Page Nav and Banner -->
    {% include site/modules/pageTop.inc %}
    <!-- Top of Page Nav and Banner -->
    <div class="banner">
      <div id="app-git-edit" data-path="{{ page.path }}" data-gitrepo="{{ site.git_repo}}"></div>
        <div class="row">
            <div class="col-md-12">
                {{ content }}
            </div>
        </div>
    </div>

    {% include site/modules/contactBox.inc %}

</div>
