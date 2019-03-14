{% assign d = site._modules | where:"slug", "nav" | first %}


<!--
<div class="container" id="navbar-container">
  <div class="top-container">
    <div class="navbar navbar-default">
      <div class="tgl-logo">
        <a id="tgl-logo-link" href="/"><img class="logo-img" src="/assets/site/images/logo-tgl.svg" /></a>
      </div>
      <ul class="nav navbar-nav">
        {% for item in d.nav_list %}
          <li><a {% if page.url == item.link_txt %} class="active" {% endif %} href={{item.link_txt}}>{{item.title_txt}}</a></li>
        {% endfor %}
      </ul>
    </div>
  </div>
</div>

-->