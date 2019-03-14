{% assign footer = site._modules | where:"slug", "footer" | first %}

<footer>
	<div class="nextlabs-footer">
		<div class="container">
			<div class="row">
				<a href="{{footer.oicr-labs_link}}" class="oicr-link">{{footer.oicr-labs_txt}}</a>
				<ul class="oicr-list">
					{% assign count = 0 %} {% for item in footer.oicr-labs_list %}
					<li>
						<a href="{{item.link_txt}}" {% if count==0 %}class="first" {% endif %}>{{item.item_txt}}</a>
					</li>
					{% assign count = count | plus: 1 %} {% endfor %}
				</ul>
				<div class="right-element">{{footer.mailing_list[0].feedback_txt}}
					<a href="{{footer.mailing_list[0].link_txt}}">{{footer.mailing_list[0].item_txt}}</a>
				</div>
			</div>
		</div>
	</div>
	<div class="labs-footer">
		<div class="container">
			<div class="row">
				<div class="list-container">
					<div class="labs-list">
						<div class="footer-logo">
							<a class="footer-logo-container" href="{{ footer.logoLink_txt }}">
								<img src="{{footer.general-oicr-img_txt}}">
							</a>
						</div>
						{% assign count = 0 %} {% for item in footer.general-oicr_list %} {% assign remainder = count | modulo: 3%}
						<a href="{{item.link_txt}}" {% if remainder==0 %}class="no-left" {% endif %}>{{item.item_txt}}</a>
						{% assign count = count | plus: 1 %} {% endfor %}
					</div>
					<div class="final-link">
						{% for item in footer.final-link_list %}{{ item.content_txt}} <a href="{{ item.link_txt }}">{{ item.item_txt }}</a>{% endfor %}
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>