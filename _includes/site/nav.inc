{% assign nav = site._modules | where:"slug", "nav" | first %}
<div id="navigation" class="navigation container-shadow">

    <nav id="sticky-nav" class="navbar nav-main navbar-no-border">
        <div id="nav-container" class="container">

            {% if nav.nav-logo-link and nav.nav-logo-link.size > 0 %}
            <div role="presentation" id="nav-item-title">
                <a class="nav-link" href="/">
                    <img id="logo-img" src="{{ nav.nav-logo-link }}">
                    <p id="logo-text">{{nav.title_txt}}</p>
                </a>
            </div>
            {% endif %}

            <div class="navbar-header">
                <div id="nav-mobile">
                    <button id="side-nav-toggle" type="button" data-target="#side-nav" className="side-toggle">
                        <div class="btn-open">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </div>
                        <div class="btn-close">
                        </div>
                    </button>
                </div>
            </div>

            

            <div id="side-nav">
                <nav id="main-nav" role="navigation">

                    <div class="nav-top-container">
                        <div id="app-user-nav"></div>
                        <div id="nav-collapse-search" class="nav-search sticky-hide-md">
                            <form class="form-inline" id="trc-nav-search">
                            <div class="form-group input-with-clear">
                                <label class="sr-only" for="trc-nav-search-keywords"></label>
                                <input type="text" class="form-control" id="trc-nav-search-keywords" placeholder="{{nav.searchBar_txt}}">
                                <span class="input-clear glyphicon glyphicon-remove hide"></span>
                            </div>
                            <button type="submit" class="btn btn-default sr-only">{{nav.searchBar_txt}}
                            </button>
                            </form>
                        </div>
                    </div>


                <div class="collapse navbar-collapse {% if page.permalink != '/' %}small-logo{% endif %}" id="navbar-collapse-1">

                {% if nav.nav_list and nav.nav_list.size > 0 %}
                    <div id="menu-main-menu">
                        <ul id="nav-main-menu" class="my-navbar nav navbar-nav">
                            {% for item in nav.nav_list %}
                                {% if item.dropdown_list %}
                                    {% assign links = item.dropdown_list | map: 'link_txt' %}
                                    <li role="presentation" class="nav-item dropdown {% if page.permalink == item.link_txt %}active{% elsif links contains page.permalink %}active{% endif %}">
                                        <a id="dropdown-toggle-link" class="nav-link dropdown-toggle arrow-down-default-hover-white {% if page.permalink != "/policies/" %}{% if page.permalink == item.link_txt %}active{% elsif links contains page.permalink %}active{% endif %}{%endif%}" id="navDropdown{{ item.title_txt | replace: ' ', '' }}"
                                        data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ item.title_txt }}
                                        </a>
                                        <ul class="dropdown-menu" aria-labelledby="navDropdown{{ item.title_txt | replace: ' ', '' }}">
                                            {% for drop in item.dropdown_list %}
                                                <li class="{% if page.permalink != "/policies/" %}{% if page.permalink == drop.link_txt %}active{% endif %}{%endif%}">
                                                    <a class="no-border-bottom dropdown-item" href="{{ drop.link_txt }}" title="{{item.title_txt}}-{{drop.title_txt}}">{{ drop.title_txt }}</a>
                                                </li>
                                            {% endfor %}
                                        </ul>
                                    </li>
                                {% else %}
                                    <li role="presentation" class="nav-item {% if page.permalink == item.link_txt %}active{% endif %}">
                                        <a class="nav-link {% if page.permalink == item.link_txt %}active{% endif %}" href="{{ item.link_txt }}">{{ item.title_txt }}</a>
                                    </li>
                                {% endif %}
                            {% endfor %}
                        </ul>
                    </div>
                {% endif %}

            </div>






                  {% if nav.nav_list and nav.nav_list.size > 0 %}
                  <div id="menu-main-menu" class="visible-xs">
                      <ul id="nav-main-menu" class="my-navbar nav navbar-nav">
                          {% for item in nav.nav_list %}
                              {% if item.dropdown_list and item.dropdown_list.size > 0 %}
                                  {% assign links = item.dropdown_list | map: 'link_txt' %}
                                  <li role="presentation" class="nav-item dropdown {% if page.permalink == item.link_txt %}active{% elsif links contains page.permalink %}active{% endif %}">
                                      <a class="nav-link dropdown-toggle arrow-down-default-hover-white text-uppercase {% if page.permalink != "/policies/" %}{% if page.permalink == item.link_txt %}active{% elsif links contains page.permalink %}active{% endif %}{%endif%}" href="{{item.link_txt}}" id="navDropdown{{ item.title_txt | replace: ' ', '' }}"
                                      data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ item.title_txt }}
                                      </a>
                                      <ul class="dropdown-menu" aria-labelledby="navDropdown{{ item.title_txt | replace: ' ', '' }}">
                                          {% for drop in item.dropdown_list %}
                                              <li class="{% if page.permalink == drop.link_txt %}active{% endif %}">
                                                  <a class="no-border-bottom dropdown-item" href="{{ drop.link_txt }}" title="{{item.title_txt}}-{{drop.title_txt}}">{{ drop.title_txt }}</a>
                                              </li>
                                          {% endfor %}
                                      </ul> 
                                  </li>
                              {% else %}
                                  <li role="presentation" class="nav-item text-uppercase {% if page.permalink == item.link_txt %}active{% endif %}">
                                      <a class="nav-link {% if page.permalink == item.link_txt %}active{% endif %}" href="{{ item.link_txt }}">{{ item.title_txt }}</a>
                                  </li>
                              {% endif %}
                          {% endfor %}
                      </ul>
                  </div>
                  {% endif %}
                  <div id="side-nav-logo" class="visible-xs">
                    <a class="side-nav-logo-link" href="https://oicr.on.ca">
                        <img class="side-nav-logo-img" src="/assets/site/images/oicr-logo-black.png" />
                    </a>
                  </div>
                </nav>
            </div>




        </div>
    </nav>

</div>