<h3 class="text-center">Veuillez renseigner ci-dessous les
	informations du nouveau conseiller</h3>
<div class="alert alert-info text-center" role="alert">Note : les
	r�f�rences conseiller sont g�n�r�s automatiquement.</div>
	
<form class="formStyle" method="post" action="addConseiller">

	<div class="form-group">
		<label
			class="control-label col-md-5 text-right control-label"
			data-toggle="tooltip" title="" for="name"
			data-original-title="Pr�ciser le nom">Nom</label>
		<div class="col-md-7">
			<input type="text" id="name" name="name"
				class="form-control text-format form-control" value=""
				placeholder="Nom du conseiller" required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right control-label"
			data-toggle="tooltip" title="" for="firstname"
			data-original-title="Pr�ciser le pr�nom">Pr�nom</label>
		<div class="col-md-7">
			<input type="text" id="firstname" name="firstname"
				class="form-control text-format form-control" value=""
				placeholder="Pr�nom du conseiller"  required='required'>
		</div>
	</div>

	<div class="form-group">
		<label
			class="control-label col-md-5 text-right control-label"
			data-toggle="tooltip" title="" for="email"
			data-original-title="Pr�ciser l'adresse mail">Email</label>
		<div class="col-md-7">
			<input type="email" id="email" name="email"
				class="form-control text-format form-control" value=""
				placeholder="ex : c1@proxi.bk" required='required'>
		</div>
	</div>



	
	<div class="form-group">
		<div class="">
			<div class="col-sm-2 col-sm-offset-5">
				<button type="submit" name="createConseiller" id="createConseiller"
					class="form-control btn btn-success">Valider</button>
			</div>
		</div>
	</div>
</form>