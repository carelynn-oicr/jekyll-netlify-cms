---
layout: pagesAll
---
<section>
	<div class="jumbotron" id="small-jumbotron">	
    	<div id="banner-text-container" >
      		<div class="container">
				<h1>{{page.header_txt}}</h1>
			</div>
    	</div>
  	</div>
	<!-- A section for a Category (e.g. Co-op Students, etc)-->
	<div id="team-page" class="container">
		<div class="row">
			<div class="col-md-12 bottom-padding">
				<p>{{page.body_txt | markdownify}}</p>
			</div>
		</div>


		<div class="row">
			<div class="col-md-12">
				<h2 class="team-header text-center">{{page.title_txt}}</h2>
				<div class="team bottom-padding">
				{% for person in page.team %}
					<div class="person">
						<img class="profile-pic" src="{{person.picture_txt}}">
						<div class="person-block">
							<p class="member-name">{{person.name_txt}}</p>
							<p class="member-title">{{person.position_txt}}</p>
							<a type="button" data-toggle="modal" data-target="{{person.link_txt}}">{{page.readBio_txt}}</a>
						</div>
					</div>

					<!-- Modal 	you have to give it a unique id for each person. Since you are going to for loops this team, I only created one modal -->
					<div class="modal fade" id="{{person.modal_txt}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<h4 class="modal-title" id="myModalLabel">{{person.bioTitle_txt}}</h4>
								</div>
								<div class="modal-body">
									<img class="modal-picture" src="{{person.picture_txt}}">
									{{person.bioBody_txt | markdownify}}
								</div>
							</div>
						</div>
					</div>
					<!-- end of modal -->
					{% endfor %}
				</div>
			</div>
		</div>

		<div class="team-wrapper content">
			<div class="row">
				<div class="col-md-12">
					<h2 class="team-header text-center">{{page.titleTwo_txt}}</h2>
					<div class="team p-10-bottom">
					{% for person in page.alumni %}
						<div class="person">
							<img class="profile-pic" src="{{person.picture_txt}}">
							<div class="person-block">
								<p class="member-name">{{person.name_txt}}</p>
								<p class="member-title">{{person.position_txt}}</p>
								<a type="button" data-toggle="modal" data-target="{{person.link_txt}}">{{page.readBio_txt}}</a>
							</div>
						</div>
				
						<!-- Modal 	you have to give it a unique id for each person. Since you are going to for loops this team, I only created one modal -->
						<div class="modal fade" id="{{person.modal_txt}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">

									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<h4 class="modal-title" id="myModalLabel">{{person.bioTitle_txt}}</h4>
									</div>

									<div class="modal-body">
										<img class="modal-picture" src="{{person.picture_txt}}">
										{{person.bioBody_txt | markdownify}}
									</div>

								</div>
							</div>
						</div>
						<!-- end of modal -->
						{% endfor %}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
	
