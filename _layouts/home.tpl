---
layout: pagesAll
---
<section>
<div id="home-page">
    <div class="jumbotron">
      <div id="banner-outer-container">
        <div class="container">
          <h1 class="black-txt">{{page.header_txt}}</h1>
          <h1 class="green-txt">{{page.header_txt2}}</h1>
        </div>
      </div>
    </div>
      <!-- About Us-->
      <div class="container">
        <div class="row bottom-border no-border-sm">
          <div class="col-md-6">
            <div class="about-us-top flex-half">
              <div>
                <h2 id="header-first" class="background-header">{{page.about.title_txt}}</h2>
                <p>{{page.about.introduction_txt | markdownify }}</p>
              </div>
              <a href="/aboutus/">
                <button class="more-btn about-us-btn"><div class="btn-txt"><div class="p-20-right btn-txt-padding">{{page.about.more-btn_txt}}</div><img class="white-arrow-right" src="/assets/site/images/noun_Arrow_2209553_000000.svg"></div></button>
              </a>
            </div>
          </div>
          
          <div class="col-md-6">
              <div id="img-home">
                <img class="img-responsive" src="{{page.about.src_txt}}">
              </div>
          </div>
        </div>
        

        <div class="row top-padding">
            <!-- Lab Sample Submissions And Costs-->
            <div class="col-md-6 p-20">
              <div class="content-box">
                <div class="about-us-top flex-half">
                  <div class="row icon-row">
                    <div class="icon-container">
                      <img class="img-responsive icon-img" src="{{page.labSample.img_txt}}">
                    </div>
                    <h2 class="background-header">{{page.labSample.title_txt}}</h2>
                  </div>
                    {{page.labSample.content_txt | markdownify}}
                    <div id="link-lab-sample">
                      <a href="/translational-genomics-laboratory/sample-submissions/">{{page.labSample.lab-submissions-btn_txt}}</a>
                      <img class="green-arrow-right" src="/assets/site/images/noun_Arrow_2209553_000000.svg">
                    </div>
                </div>
              </div>
            </div>

            <div class="col-md-6 p-20">
              <div class="content-box">
                <div class="about-us-top flex-half col-2">
                    <div class="row icon-row">
                      <div class="icon-container">
                        <img class="img-responsive icon-img" src="{{page.labMethods.img_txt}}">
                      </div>
                      <h2 class="background-header">{{page.labMethods.title_txt}}</h2>
                    </div>
                    {{page.labMethods.content_txt | markdownify}}
                    <div id="link-lab-members">
                      <a href="/translational-genomics-laboratory/lab-protocols-bioinformatics/">{{page.labMethods.button_txt}}</a>
                      <img class="green-arrow-right" src="/assets/site/images/noun_Arrow_2209553_000000.svg">
                    </div>
                </div>
              </div>
            </div>
        </div>

        <div class="row top-padding flex p-10-bottom">
          <div class="col-md-12 bottom-padding-20">
            <h2 class="background-header text-center">{{page.theTeam.title_txt}}</h2>
          </div>
          <div class="col-md-6">
            <div class="right-padding-20">
              {{page.theTeam.content_txt | markdownify}}
              <a href="/translational-genomics-laboratory/team/">
                <button class="more-btn team-btn"><div class="btn-txt"><div class="p-20-right btn-txt-padding">{{page.theTeam.button_txt}}</div><img class="white-arrow-right" src="/assets/site/images/noun_Arrow_2209553_000000.svg"></div></button>
              </a>
            </div>
          </div>
          <div class="col-md-6 left-padding-20">
            <div class="row left-padding-20 right-padding-20">
              <div class="col-md-4 col-sm-4 col-xs-4 p-5-sides">
                <div class="team-img">
                  <img class="img-responsive" src="{{page.theTeam.src_pugh}}">
                </div>
                <p class="image-description">{{page.theTeam.text_pugh}}</p>
              </div>
              <div class="col-md-4 col-sm-4 col-xs-4 p-5-sides">
                <div class="team-img">
                  <img class="img-responsive text-center" src="{{page.theTeam.src_torti}}">
                </div>
                <p class="image-description">{{page.theTeam.text_torti}}</p>
              </div>
              <div class="col-md-4 col-sm-4 col-xs-4 p-5-sides">
                <div class="team-img text-center">
                  <img class="img-responsive" src="{{page.theTeam.src_tortia}}">
                </div>
                <p class="image-description">{{page.theTeam.text_tortia}}</p>
              </div>
            </div>
          </div>
        </div>
      </div>


</div>
</section>
