<?php

switch ($messaggio) {

case "Il cognome verrà cambiato da":  		$messaggio = "The surname will be changed from"; break;
case "a":  					$messaggio = "to"; break;
case "Il nome verrà cambiato da":  		$messaggio = "The name will be changed from"; break;
case "Il sesso verrà cambiato a":  		$messaggio = "The gender will be changed to "; break;
case "La data di nascita  verrà cambiata da":  	$messaggio = "The birthdate will be changed from"; break;
case "Il telefono verrà cambiato da":  		$messaggio = "The telephone will be changed from"; break;
case "La via  verrà cambiata da":  		$messaggio = "The street will be changed from"; break;
case "Il numero civico verrà cambiato da":  	$messaggio = "The street number will be changed from"; break;
case "La città di residenza verrà cambiata da":	$messaggio = "The city of residence will be changed from"; break;
case "La nazione di residenza verrà cambiata da":	$messaggio = "The nation of residence will be changed from"; break;
case "Il CAP verrà cambiato da":  		$messaggio = "The postal code will be changed from"; break;
case "Il fax verrà cambiato da":  		$messaggio = "The fax will be changed from"; break;
case "L' email verrà cambiata da":  		$messaggio = "The email will be changed from"; break;
case "Il 2° telefono verrà cambiato da":  	$messaggio = "The 2nd telephone will be changed from"; break;
case "Il 3° telefono verrà cambiato da":  	$messaggio = "The 3rd telephone will be changed from"; break;
case "Il <b>commento</b> verrà cambiato":  	$messaggio = "The <b>comment</b> will be changed"; break;
case "Il <b>nome</b> verrà cancellato":  	$messaggio = "The <b>name</b> will be deleted"; break;
case "La <b>data di nascita</b> verrà cancellata":	$messaggio = "The <b>birthdate</b> will be deleted"; break;
case "Il <b>telefono</b> verrà cancellato":  	$messaggio = "The <b>telephone</b> will be deleted"; break;
case "La <b>via</b> verrà cancellata":  	$messaggio = "The <b>street</b> will be deleted"; break;
case "Il <b>n° civico</b> verrà cancellato":  	$messaggio = "The <b>street number</b> will be deleted"; break;
case "La <b>città di residenza</b> verrà cancellata":	$messaggio = "The <b>city of residence</b> will be deleted"; break;
case "La <b>nazione di residenza</b> verrà cancellata":	$messaggio = "The <b>nation of residence</b> will be deleted"; break;
case "Il <b>CAP</b> verrà cancellato":  	$messaggio = "The <b>postal code</b> will be deleted"; break;
case "Il <b>fax</b> verrà cancellato":  	$messaggio = "The <b>fax</b> will be deleted"; break;
case "L' <b>email</b> verrà cancellata":  	$messaggio = "The <b>email</b> will be deleted"; break;
case "Il <b>2° telefono</b> verrà cancellato":	$messaggio = "The <b>2nd telephone</b> will be deleted"; break;
case "Il <b>3° telefono</b> verrà cancellato":	$messaggio = "The <b>3rd telephone</b> will be deleted"; break;
case "Continua":  				$messaggio = "Continue"; break;
case "Il cliente":  				$messaggio = "Client"; break;
case "è stato modificato":  			$messaggio = "has been modified"; break;
case "Torna indietro":  			$messaggio = "Go back"; break;
case "Modifica i dati del cliente":  		$messaggio = "Modify data of client"; break;
case "Cognome":  				$messaggio = "Surame"; break;
case "cambia in":  				$messaggio = "change to"; break;
case "Nome":  					$messaggio = "Name"; break;
case "cancella":  				$messaggio = "delete"; break;
case "Sesso":  					$messaggio = "Gender"; break;
case "Data di nascita":  			$messaggio = "Birthdate"; break;
case "Telefono":  				$messaggio = "Telephone"; break;
case "Via":  					$messaggio = "Street"; break;
case "Piazza":  				$messaggio = "Square"; break;
case "Viale":  					$messaggio = "Avenue"; break;
case "Piazzale":  				$messaggio = "Boulevard"; break;
case "Vicolo":  				$messaggio = "Road"; break;
case "Numero civico":  				$messaggio = "Street number"; break;
case "Città di residenza":  			$messaggio = "City of residence"; break;
case "Nazione di residenza":  			$messaggio = "Nation of residence"; break;
case "CAP":  					$messaggio = "Postal code"; break;
case "Fax":  					$messaggio = "Fax"; break;
case "Email":  					$messaggio = "Email"; break;
case "2° telefono":  				$messaggio = "2nd telephone"; break;
case "3° telefono":  				$messaggio = "3rd telephone"; break;
case "Commento":  				$messaggio = "Comment"; break;
case "documento di tipo":  			$messaggio = "document type"; break;
case "visualizza":  				$messaggio = "view"; break;
case "visualizza il documento":  		$messaggio = "view document"; break;
case "Prenotazioni del cliente":  		$messaggio = "Reservations of client"; break;
case "nel":  					$messaggio = "in"; break;
case "Cognome_del_cliente":  			$messaggio = "Client_surname"; break;
case "Data_iniziale":  				$messaggio = "Starting_date"; break;
case "Data_finale":  				$messaggio = "Ending_date"; break;
case "Tariffa_completa":  			$messaggio = "Complete_rate"; break;
case "Caparra":  				$messaggio = "Deposit"; break;
case "Pagato":  				$messaggio = "Paid"; break;
case "Commento":  				$messaggio = "Comment"; break;
case "TOTALE":  				$messaggio = "TOTAL"; break;
case "Pers":  					$messaggio = "Peop"; break;
case "Inserito da":  				$messaggio = "Inserted by"; break;
case "Si considererà l'utente":  		$messaggio = "User"; break;
case "come colui che ha inserito il cliente":	$messaggio = "will be considered as the one who inserted the client"; break;
case "Cliente cancellato":  			$messaggio = "Client deleted"; break;
case "Cancella il cliente":  			$messaggio = "Delete client"; break;
case "Questo cliente non si può cancellare perchè ancora associato a delle prenotazioni":	$messaggio = "This client can not be deleted because he is still associated to some reservations"; break;
case "NO":  					$messaggio = "NO"; break;
case "Si è sicuri di voler <div style=\"display: inline; color: red;\">cancellare</div> il cliente":	$messaggio = "Are you sure you want to <div style=\"display: inline; color: red;\">delete</div> client"; break;
case "SI":  					$messaggio = "YES"; break;
case "Reg./Prov. di residenza":  		$messaggio = "Region of residence"; break;
case "Documento":  				$messaggio = "Document"; break;
case "Scadenza documento":  			$messaggio = "Document expiration"; break;
case "La regione di residenza verrà cambiata da":	$messaggio = "The region of residence will be changed from"; break;
case "Il documento verrà cambiato da":  	$messaggio = "The document will be changed from"; break;
case "La data di scadenza del documento  verrà cambiata da":	$messaggio = "The document expiration date will be changed from"; break;
case "La <b>regione di residenza</b> verrà cancellata":	$messaggio = "The <b>region of residence</b> will be deleted"; break;
case "Il <b>documento</b> verrà cancellato":  	$messaggio = "The <b>document</b> will be deleted"; break;
case "La <b>data di scadenza del documento</b> verrà cancellata":	$messaggio = "The <b>document expiration date</b> will be deleted"; break;
case "Cittadinanza":  				$messaggio = "Nationality"; break;
case "Nazione di nascita":  			$messaggio = "Nation of birth"; break;
case "Reg./Prov. di nascita":  			$messaggio = "Region of birth"; break;
case "Città di nascita":  			$messaggio = "City of birth"; break;
case "Città di rilascio":  			$messaggio = "Releasing city"; break;
case "Reg./Prov. di rilascio":  		$messaggio = "Releasing region"; break;
case "Nazione di rilascio":  			$messaggio = "Releasing nation"; break;
case "La cittadinanza verrà cambiata da":  	$messaggio = "The nationality will be changed from"; break;
case "La nazione di nascita verrà cambiata da":	$messaggio = "The nation of birth will be changed from"; break;
case "La regione di nascita verrà cambiata da":	$messaggio = "The region of birth will be changed from"; break;
case "La città di nascita verrà cambiata da":	$messaggio = "The city of birth will be changed from"; break;
case "La città di rilascio del documento verrà cambiata da":	$messaggio = "The city releasing the document will be changed from"; break;
case "La regione/provincia di rilascio del documento verrà cambiata da":	$messaggio = "The region releasing the document will be changed from"; break;
case "La nazione di rilascio del documento verrà cambiata da":	$messaggio = "The nation releasing the document will be changed from"; break;
case "La <b>cittadinanza</b> verrà cancellata":	$messaggio = "The <b>nationality</b> will be deleted"; break;
case "La <b>nazione di nascita</b> verrà cancellata":	$messaggio = "The <b>nation of birth</b> will be deleted"; break;
case "La <b>regione di nascita</b> verrà cancellata":	$messaggio = "The <b>region of birth</b> will be deleted"; break;
case "La <b>città di nascita</b> verrà cancellata":	$messaggio = "The <b>city of birth</b> will be deleted"; break;
case "La <b>città di rilascio del documento</b> verrà cancellata":	$messaggio = "The <b>city releasing the document</b> will be deleted"; break;
case "La <b>regione/provincia di rilascio del documento</b> verrà cancellata":	$messaggio = "The <b>region releasing the document</b> will be deleted"; break;
case "La <b>nazione di rilascio del documento</b> verrà cancellata":	$messaggio = "The <b>nation releasing the document</b> will be deleted"; break;
case "Codice fiscale":  			$messaggio = "Fiscal code"; break;
case "Il codice fiscale verrà cambiato da":	$messaggio = "The fiscal code will be changed from"; break;
case "Il <b>codice fiscale</b> verrà cancellato":	$messaggio = "The <b>fiscal code</b> will be deleted"; break;
case "Titolo":  				$messaggio = "Title"; break;
case "Il titolo verrà cambiato da":  		$messaggio = "The title will be changed from"; break;
case "Il <b>titolo</b> verrà cancellato":  	$messaggio = "The <b>title</b> will be deleted"; break;
case "Partita iva":  				$messaggio = "VAT number"; break;
case "La partita iva verrà cambiata da":  	$messaggio = "The VAT number will be changed from"; break;
case "La <b>partita iva</b> verrà cancellata": 	$messaggio = "The <b>VAT number</b> will be deleted"; break;
case "data inserimento":  			$messaggio = "insertion date"; break;
case "carte di credito":  			$messaggio = "credit cards"; break;
case "password per la visualizzazione delle carte di credito":	$messaggio = "password to view credit cards"; break;
case "invia":  					$messaggio = "send"; break;
case "password errata":  			$messaggio = "wrong password"; break;
case "i dati della carta di credito sono stati cancellati":	$messaggio = "credit card data have been deleted"; break;
case "il numero di carta di credito è <span class=\"colred\">sbagliato</span>":	$messaggio = "credit card number is <span class=\"colred\">wrong</span>"; break;
case "il numero CVC è <span class=\"colred\">sbagliato</span>":	$messaggio = "CVC number is <span class=\"colred\">wrong</span>"; break;
case "i dati della carta di credito sono stati inseriti":	$messaggio = "credit card data have been inserted"; break;
case "carta di credito del cliente":  		$messaggio = "credit card of client"; break;
case "tipo":  					$messaggio = "type"; break;
case "numero":  				$messaggio = "number"; break;
case "titolare":  				$messaggio = "titular"; break;
case "scadenza":  				$messaggio = "expiration"; break;
case "CVC":  					$messaggio = "CVC"; break;
case "modifica i dati della carta di credito":	$messaggio = "modify credit card data"; break;
case "cancella questa carta di credito":  	$messaggio = "delete this credit card"; break;
case "soprannome":  				$messaggio = "nickname"; break;
case "Il soprannome verrà cambiato da":  	$messaggio = "The nickname will be changed from"; break;
case "Il <b>soprannome</b> verrà cancellato":  	$messaggio = "The <b>nickname</b> will be deleted"; break;
case "Lingua":  				$messaggio = "Language"; break;
case "La lingua verrà cambiata da":  		$messaggio = "The language will be changed from"; break;
case "La <b>lingua</b> verrà cancellata":  	$messaggio = "The <b>language</b> will be deleted"; break;
case "I dati della carta di credito possono essere visti solo su una connessione sicura":	$messaggio = "Credit card data can be viewed only on a secure connection"; break;
case "Il campo":  				$messaggio = "The field"; break;
case "verrà tolto":  				$messaggio = "will be deleted"; break;
case "verrà modificato":  			$messaggio = "will be modified"; break;
case "verrà aggiunto":  			$messaggio = "will be added"; break;
case "":  		$messaggio = ""; break;
case "":  		$messaggio = ""; break;

} # fine switch ($messaggio)

?>