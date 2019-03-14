---
layout: pagesAll
---
<section id="reb-page">
	<div class="jumbotron" id="small-jumbotron">	
    	<div id="banner-text-container">
			<div class="container">
			  	<h1>{{page.header_txt}}</h1>
			</div>
    	</div>
  	</div>
	<!-- Option 2-->
	<div class="container">
		<div class="row bottom-padding">
			<div class="col-md-6 right-padding-20">
			    <h2 id="header-first"> {{page.introduction-title_txt}} </h2>
				{{page.introduction_txt | markdownify}}
				<h3> {{page.introduction_subheading}} </h3>
				{{page.introduction2_txt | markdownify}}
			</div>
			<div class="col-md-6 left-padding-20">
			    <div id="img-reb">
			    <img class="img-responsive img-responsive-sm" src="/assets/site/images/istockphoto-872025342-1024x1024.jpg">
				</div>
			</div>
		</div>
		<div class="row bottom-padding">
			<div class="col-md-6 right-padding-20">
				<h2> {{page.grant-app-title_txt}} </h2>
				<div id="img-reb">
			    <img class="img-responsive img-responsive-sm" src="/assets/site/images/istockphoto-889031464-1024x1024.jpg">
				</div>
				{{page.grantBody_txt | markdownify}}
			</div>
			<div class="col-md-6 left-padding-20">
				<h2> {{page.REBApproval_txt}} </h2>
				{{page.REBApprovalBody_txt | markdownify}}
				<h3> {{page.REBApproval_subheading}} </h3>
				{{page.REBApprovalBody2_txt | markdownify}}
			</div>
		</div>
		<div class="row bottom-padding">
			<div class="col-md-6 right-padding-20">
				<h2> {{page.transferAgreements_txt}} </h2>
				{{page.transferAgreementsBody_txt | markdownify}}
			</div>
			<div class="col-md-6 left-padding-20">
				<h2> {{page.acknowledgements_txt}}</h2>
				{{page.acknowledgementsBody_txt | markdownify}}
			</div>
		</div>
		<div class="row bottom-padding">
			<div class="col-md-12 text-center">
				<h2> {{page.recommendations_txt}}</h2>
			</div>
			<div class="col-md-6 right-padding">
			  {% for item in page.recommendations_list %}
			  	<div class="row p-20-vertical">
				  	<div class="col-md-1 col-sm-1 col-xs-2 check">
						<img src="/assets/site/images/noun_Check_1635223_000000.svg">
					</div>
					<div class="col-md-11 col-sm-11 col-xs-10">
						<ul class="check-list">
							<li>{{ item.list_txt | markdownify }}</li>
						</ul>
					</div>
				</div>
			  {% endfor %}
			</div>
			<div class="col-md-6 left-padding">
			  {% for item in page.recommendations2_list %}
				  <div class="row p-20-vertical">
				  	<div class="col-md-1 col-sm-1 col-xs-2 check">
						<img src="/assets/site/images/noun_Check_1635223_000000.svg">
					</div>
					<div class="col-md-11 col-sm-11 col-xs-10">
						<ul class="check-list">
							<li>{{ item.list_txt | markdownify }}</li>
						</ul>
					</div>
				</div>
			  {% endfor %}
			</div>
		</div>
		<div class="row bottom-border">
			<div class="col-md-12 text-center">
				<h2> {{page.sampleSubmissions_txt}}</h2>
			</div>
			<div class="col-md-6 right-padding-20">
				<div class="content-box-border-grey reb-blue-box">
					<div class="row">
						<div class="col-md-5"></div>
						<div class="col-md-2" id="img-top-container">
							<img id="img-top" src="/assets/site/images/noun_samples_1100004_000000.svg">
						</div>
						<div class="col-md-5"></div>
					</div>
					{{page.sampleSubmissionsBody_txt | markdownify}}
				</div>
			</div>
			<div class="col-md-6 left-padding-20">
			    <div id="img-reb">
			    	<img id="img-sample-submit" class="img-responsive" src="/assets/site/images/istockphoto-636194124-1024x1024.jpg">
				</div>
			</div>
		</div>
        <div class="row bottom-padding top-padding">
		    <div class="col-md-12 top-padding-screen-sm">
				<div class="m-negative-20">
			    	{{page.sampleSubmissionsBody2_txt | markdownify}}
				</div>
				<!-- Sequencing Tables-->
				<div id="seqTable">
					<table class="table">
						<tr>
							<th colspan="2">{{page.illumina_txt}}</th>
						</tr>
						<colgroup>
							<col class="firstCol">
							<col class="secondCol">
						</colgroup>
						<tbody>
							{% for items in page.illumina_list %}
							<tr>
								<td>{{items.item.title}}</td>
								<td>{{items.item.value}}</td>
							</tr>
						</tbody>
						{%endfor%}
					</table>
				</div>

				<div id="seqTable">
					<table class="table">
						<tr>
							<th colspan="2">{{page.sequencing_txt}}</th>
						</tr>
						<colgroup>
							<col class="firstCol">
							<col class="secondCol">
						</colgroup>
						<tbody>
							{% for items in page.sequencing_list %}
							<tr>
								<td>{{items.item.title}}</td>
								<td>{{items.item.value}}</td>
							</tr>
							{%endfor%}
						</tbody>
					</table class="table">
				</div>

				<div id="seqTable">
					<table class="table">
						<tr>
							<th colspan="2">{{page.recommendedReadDepths_txt}}</th>
						</tr>
						<colgroup>
							<col class="firstCol">
							<col class="secondCol">
						</colgroup>
						<tbody>
							{% for items in page.recommendedReadDepths_list %}
							<tr>
								<td>{{items.item.title}}</td>
								<td>{{items.item.value}}</td>
							</tr>
							{% endfor %}
						</tbody>
					</table>
				</div>
				<div class="recommendations-txt">
					{{page.recommendedReadDepthsNote_txt | markdownify}}
				</div>
			</div>
		</div>

		<div class="row bottom-padding">
			<div class="col-md-12">
				<div class="cost-text text-center">
					<h2>{{page.academicCosts_txt}}</h2>
				</div>
				<div id="seqTable">
					<table class="table">
						<tr>
							<th colspan="2">{{page.sequencing_txt}}</th>
						</tr>
						<colgroup>
							<col class="firstCol">
							<col class="secondCol">
						</colgroup>
						<tbody>
							{% for items in page.academicCosts_list %}
							<tr>
								<td>{{items.item.title}}</td>
								<td>{{items.item.value}}</td>
							</tr>
							{% endfor %}
						</tbody>
					</table>
				</div>
				{{page.academicCostsNote_txt | markdownify}}
			</div>
		</div>

		<div class="row p-10-bottom">
			<div class="col-md-6 right-padding-20">
				<h2>{{page.procurement_txt}}</h2>
				{{page.procurementBody_txt | markdownify}}
			</div>
			<div class="col-md-6 left-padding-20">
				<h2>{{page.shipping_txt}}</h2>
				{{page.shippingBody_txt | markdownify}}
			</div>
		</div>
	</div>
</section>