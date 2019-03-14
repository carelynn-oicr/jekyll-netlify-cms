---
layout: pagesAll
---
<section>
<div class="jumbotron" id="small-jumbotron">
  <div id="banner-text-container">
    <div class="container">
      <h1>{{page.header_txt}}</h1>
    </div>
  </div>
</div>
<div id="lab-protocol" class="container">

      <div class="labs-wrapper content">
        <div class="row bottom-padding">
          <div class="col-md-6 right-padding-20">
            <h2 id="header-first">{{page.introduction_title}}</h2>
            {{page.introduction_txt | markdownify}}
          </div>
          <div class="col-md-6 left-padding-20">
            <h2>{{page.grantApp_title}}</h2>
            {{page.grantApp_txt | markdownify}}
          </div>
        </div>

        <div class="row p-10-bottom">
          <div class="col-md-6 right-padding-20">
            <h2>{{page.lab_protocol_title}}</h2>
              {% for link in page.lab_protocol_links %}
                {{link.link_txt | markdownify}}
              {% endfor %}
          </div>
          <div class="col-md-6 left-padding-20">
            <h2>{{page.bioinformatics_pipelines_title}}</h2>
              {% for link in page.bioinformatics_pipelines_links %}
                {{link.link_txt | markdownify}}
              {% endfor %}
          </div>
        </div>
      </div>

</div>
</section>
