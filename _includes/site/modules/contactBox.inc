{% assign contact = site._modules| where:"slug", "contact" | first %}
{% assign box = contact.contactBox %}

<!-- Contact Us announcement box -->
<div class="container">
    <div class="announcement-boxes">
        <div class="announcement-box">
            <div class="row announcement-inner">
                <div class="announcement-header">
                    <h2>{{contact.contactBox.title_txt}}</h2>
                </div>
            </div>
            <div class="row container-row">
                <div class="col-md-2 col-sm-2 col-xs-2 announcement-content contact-info">
                    <div class="contact-pic-container">
                        <img alt="" class="contact-pic" src="{{box.profileImage_txt}}">
                    </div>
                </div>  
                <div class="col-md-5 col-sm-5 col-xs-9 person-contact-box">
                    <div id="person-contact">
                        {{box.fullName_txt | markdownify }}
                        {{box.position_txt | markdownify }}
                        {{box.websiteName_txt | markdownify }}
                    </div>
                    <br>
                    {% if box.emailLabel_txt %}
                    <div>{{box.email_txt | markdownify}}
                            <!-- <span class="span-text">{{box.emailLabel_txt | markdownify }}</span>  -->
                        <span class="spamspan">
                            <span class="u">{{box.emailUser_txt }}</span>
                            <img alt="at" src="{{box.emailAsset_txt}}" width="10">
                            <span class="d">{{box.emailDomain_txt}}</span>
                        </span>
                    </div>
                    {% endif %}
                    {% if box.phoneLabel_txt %}
                        <div>{{box.phoneNumber_txt | markdownify}}</div>
                    {% endif %}
                </div>

                <div class="col-md-5 col-sm-5 col-xs-12 info-column">
                    {{box.address_txt | markdownify}}
                </div>

            </div>
        </div>
    </div>
</div>
    
