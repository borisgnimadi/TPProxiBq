<form class="formStyle" method="post" action="">
	<div class="col-lg-12">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="gender"
			data-original-title="Pr�ciser votre civilit�">Type de client</label>
		<div class="col-sm-7">
			<select required="required" class="form-control" name="gender">
				<option value="">Le client est :</option>
				<option value="1">Une entreprise</option>
				<option value="2">Un particulier</option>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="siren"
			data-original-title="Pr�ciser le SIREN">SIREN</label>
		<div class="col-sm-7">
			<input type="number" id="siren" name="siren"
				class="form-control text-format form-control" value=""
				placeholder="RCS (s'il s'agit d'une entreprise)">
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="name"
			data-original-title="Pr�ciser le nom">Nom</label>
		<div class="col-sm-7">
			<input type="text" id="name" name="name"
				class="form-control text-format form-control" value=""
				placeholder="Nom du client" required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="firstname"
			data-original-title="Pr�ciser le pr�nom">Pr�nom</label>
		<div class="col-sm-7">
			<input type="text" id="firstname" name="firstname"
				class="form-control text-format form-control" value=""
				placeholder="Pr�nom du client">
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="birthday"
			data-original-title="Pr�ciser la date de naissance du client">Date
			de naissance</label>
		<div class="col-sm-7">
			<input type="date" id="birthday" name="birthday"
				class="form-control text-format form-control" value=""
				required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="residence"
			data-original-title="Pr�ciser l'adresse">Lieu de r�sidence</label>
		<div class="col-sm-7">
			<input type="text" id="residence" name="residence"
				class="form-control text-format form-control" value=""
				placeholder="Adresse du client" required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="ville"
			data-original-title="Pr�ciser la ville">Ville</label>
		<div class="col-sm-7">
			<input type="text" id="ville" name="ville"
				class="form-control text-format form-control" value=""
				placeholder="Ville du client" required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="postalCode"
			data-original-title="Pr�ciser le code postal">Code postal</label>
		<div class="col-sm-7">
			<input type="number" min="10000" max="99999" name="postalCode"
				id="postalCode" class="form-control" placeholder="Code postal"
				value="" required='required'>
		</div>
	</div>
	<div class="form-group">
		<label
			class="control-label col-md-5 text-right col-sm-2 control-label"
			data-toggle="tooltip" title="" for="phone"
			data-original-title="Pr�ciser le num�ro de t�l�phone">Num�ro
			de t�l�phone</label>
		<div class="col-sm-7">
			<input type="text" name="phone" id="phone" class="form-control"
				placeholder="T�l�phone portable" value="" required='required'>
		</div>
	</div>
	<div class="form-group">
		<div class="">
			<div class="col-sm-2 col-sm-offset-5">
				<button type="submit" name="createClient" id="createClient"
					class="form-control btn btn-success">Valider</button>
			</div>
		</div>
	</div>
</form>