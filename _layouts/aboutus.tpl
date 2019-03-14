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
  <div id="about-us" class="container">
      <div class="content about-us">
        <div class="about-us-wrapper content">
          <!-- About Us-->
          <div class="row">
            <div class="col-md-12">
              <h2 id="header-first" class="text-center h2-about-us">{{page.about.title_txt}}</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 right-padding">
              <h3>{{page.about.introduction_subheading1}}</h3>
              {{page.about.introduction_txt | markdownify}}
              <h3>{{page.about.introduction_subheading2}}</h3>
              {{page.about.introduction2_txt}}
            </div>
            <div class="col-md-6 left-padding">
              <h3>{{page.about.initiative_txt}}</h3>
              {% for text in page.about.initiative-list %}
                <div class="row">
                  <div class="col-md-1 col-sm-1 col-xs-2 arrow">
                    <img src="/assets/site/images/noun_Arrow_2209553_000000.svg">
                  </div>
                  <div class="col-md-11 col-sm-11 col-xs-10">
                    <ul class="arrow-list">
                      <li>{{ text.list_txt | markdownify }}</li>
                    </ul>
                  </div>
				      </div>
              {% endfor %}
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 top-padding">
              <h2 class="text-center">{{page.about.title2_txt}}</h2>
            </div>
          </div>
          <div class="row p-10-bottom">
            <div class="col-md-6 top-padding-30 right-padding">
              {{ page.about.body_txt | markdownify }}
              <div id="img-about-us">
                  <img class="img-responsive img-responsive-sm top-padding-20" src="/assets/site/images/istockphoto-916075448-1024x1024.jpg">
              </div>
              <h3>{{ page.about.project-octane_subheading }}</h3>
              {{ page.about.project-octane_txt | markdownify }}
              <h3>{{ page.about.laboratory_subheading }}</h3>
              <div class="bottom-padding-20">{{ page.about.laboratory_txt | markdownify }}</div>
              {% for item in page.about.laboratory_list %}
                  <ul>
                      <li>{{ item.list_txt }}</li>
                  </ul>
              {% endfor %}
            </div>
            <div class="col-md-6 left-padding">
              <div class="content-box-border-grey">
                <div class="row">
                  <div class="col-md-5"></div>
                  <div class="col-md-2" id="img-top-container">
                    <img id="img-top" src="/assets/site/images/noun_study_1984256_000000 (1).svg">
                  </div>
                  <div class="col-md-5"></div>
                </div>
                <div class="p-20-left">
                  {{ page.about.studies_txt | markdownify }}
                </div>
                {% for item in page.about.studies_list %}
                    <ul  class="point-list">
                        <li>{{ item.list_txt }}</li>
                    </ul>
                {% endfor %}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
