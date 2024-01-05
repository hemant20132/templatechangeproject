u<?php
//error_reporting(E_ALL);
//ini_set('display_errors', '1');

# tables background color and dimensions
$t1color = "#b9ccd4";
$t1border = "2";
$t1cellspacing = "0";
$t1cellpadding = "3";
$t2row1color = "#ffffff";
$t2row2color = "#f7f7f7";
$t1dates = "#daedff";
$t1datesout = "#b7dcff";
$t1seldate = "#ffffff";
$t1dropin = "#05e105";
$t1dropout = "#297929";
#$start_time = microtime();


# head
$body_bgcolor = "#dddddd";
if (!$tema_corr) $tema_corr = $tema[$id_utente];
if ($senza_colori == "SI" or ($pag == "visualizza_contratto.php" and $show_bar == "NO")) $body_bgcolor = "#ffffff";
if (C_NASCONDI_MARCA == "SI") $titolo = "";
if (defined('C_FILE_TITOLO_PERS') and C_FILE_TITOLO_PERS != "" and @is_file(C_FILE_TITOLO_PERS)) $titolo = trim(substr(implode("",file(C_FILE_TITOLO_PERS)),0,40))." - $titolo";
echo "<!DOCTYPE html>
<html>
<head>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" >
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
<title> $titolo </title>";
if ($pag == "visualizza_contratto.php" and $extra_head) echo $extra_head;
if (C_NASCONDI_MARCA != "SI") echo "<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"./img/favicon.ico\">
";
elseif (defined('C_URL_FAVICON') and C_URL_FAVICON != "" and @is_file(C_URL_FAVICON)) 
echo "<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"".C_URL_FAVICON."\">
";

echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/style.default.css\" media=\"all\" />
<link rel=\"stylesheet\" href=\"./css/bootstrap-fileupload.min.css\" />
<link rel=\"stylesheet\" href=\"./css/bootstrap-timepicker.min.css\" />
<link rel=\"stylesheet\" href=\"./css/bootstrap-fileupload.min.css\" />
<link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\"/>";

echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"./themes/$tema_corr/inc/paper.css$vers_hinc\" media=\"print\">
<script type=\"text/javascript\" src=\"./themes/$tema_corr/inc/functions.js$vers_hinc\">
</script>
";

if ($base_js) echo "<script type=\"text/javascript\" src=\"./base.js$vers_hinc\">
</script>
";

if ($show_bar == "NO") echo "<style type=\"text/css\">
#contentbox {overflow: visible; width:100%; height: 98%; margin-right: auto; margin-left: auto; padding-top: 4px; }
</style>
";

if ($start_time) echo "<style type=\"text/css\">#contentbox { height: 95%; }</style>
";
if (defined('C_FILE_CSS_PERS') and C_FILE_CSS_PERS != "" and @is_file(C_FILE_CSS_PERS)) echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"".C_FILE_CSS_PERS."\" media=\"all\">
";
echo "
<script src=\"./js/jquery-1.10.2.min.js\"></script>
<script src=\"./js/jquery-migrate-1.2.1.min.js\"></script>
<script src=\"./js/jquery-ui-1.10.3.min.js\"></script>
<script src=\"./js/bootstrap.min.js\"></script>
<script src=\"./js/modernizr.min.js\"></script>
<script src=\"./js/jquery.cookies.js\"></script>
<script src=\"./js/jquery.slimscroll.js\"></script>
<script src=\"./js/custom.js\"></script>
<script src=\"./js/modernizr.min.js\"></script>
<script src=\"./js/responsive-tables.js\"></script>
<script src=\"./js/jquery.dataTables.min.js\"></script>
</head>
<body";
if ($drag_drop) echo " ondragover=\"event.preventDefault();\" ondragenter=\"event.preventDefault();\" ondrop=\"event.preventDefault();drp_out();\"";
echo " style=\"overflow:hidden;background-color: $body_bgcolor;\">
<div id=\"mainwrapper\" class=\"mainwrapper\">

<div class=\"header\" style=\"width:95%;\">
                        <span class=\"head-icon head-message\"></span>
                        <span class=\"headmenu-label\">Messages</span>
		<div style=\"position:absolute;left:600px;\" class=\"logo\">
        </div>
            <center><h1 style=\"color:white;\">Millenium Studios </h1></center>
</div>             
";

if ($pag != "visualizza_contratto.php" or $show_bar != "NO") echo "<div id=\"menubox\">";
if ($show_bar != "NO") {


if ($id_utente != 1) {
$tableprivilegi = $PHPR_TAB_PRE."privilegi";
if (!$anno_utente_attivato) {
if (!$privilegi_annuali_utente) $privilegi_annuali_utente = esegui_query("select * from $tableprivilegi where idutente = '$id_utente' and anno = '$anno'");
if (numlin_query($privilegi_annuali_utente) == 0) $anno_utente_attivato = "NO";
else $anno_utente_attivato = "SI";
} # fine if (!$anno_utente_attivato)
if ($anno_utente_attivato == "SI") {
if (!$privilegi_globali_utente) $privilegi_globali_utente = esegui_query("select * from $tableprivilegi where idutente = '$id_utente' and anno = '1'");
if (!$priv_mod_pers) $priv_mod_pers = risul_query($privilegi_globali_utente,0,'priv_mod_pers');
if (substr($priv_mod_pers,0,1) != "s" and !$modifica_pers) $modifica_pers = "NO";
if (!$priv_crea_backup) $priv_crea_backup = substr($priv_mod_pers,1,1);
if (!$priv_ins_clienti) $priv_ins_clienti = risul_query($privilegi_globali_utente,0,'priv_ins_clienti');
if (substr($priv_ins_clienti,0,1) != "s" and !$inserimento_nuovi_clienti) $inserimento_nuovi_clienti = "NO";
if (substr($priv_ins_clienti,1,1) != "s" and substr($priv_ins_clienti,1,1) != "p" and !$modifica_clienti) $modifica_clienti = "NO";
if (substr($priv_ins_clienti,2,1) != "s" and substr($priv_ins_clienti,2,1) != "p" and !$vedi_clienti) $vedi_clienti = "NO";
if (!$priv_vedi_messaggi) {
$priv_messaggi = risul_query($privilegi_globali_utente,0,'priv_messaggi');
$priv_vedi_messaggi = substr($priv_messaggi,0,1);
} # fine if (!$priv_vedi_messaggi)
if (!$priv_inventario) $priv_inventario = risul_query($privilegi_globali_utente,0,'priv_inventario');
if (!$priv_vedi_beni_inv) $priv_vedi_beni_inv = substr($priv_inventario,0,1);
if (!$priv_vedi_inv_mag) $priv_vedi_inv_mag = substr($priv_inventario,2,1);
if (!$priv_vedi_inv_app) $priv_vedi_inv_app = substr($priv_inventario,6,1);
if (!$priv_ins_prenota) $priv_ins_prenota = risul_query($privilegi_annuali_utente,0,'priv_ins_prenota');
if (!$priv_ins_nuove_prenota) $priv_ins_nuove_prenota = substr($priv_ins_prenota,0,1);
if (!$priv_ins_costi) $priv_ins_costi = risul_query($privilegi_annuali_utente,0,'priv_ins_costi');
if (!$priv_ins_spese) $priv_ins_spese = substr($priv_ins_costi,0,1);
if (!$priv_ins_entrate) $priv_ins_entrate = substr($priv_ins_costi,1,1);
if (!$priv_mod_prenota) $priv_mod_prenota = risul_query($privilegi_annuali_utente,0,'priv_mod_prenota');
if (!$priv_mod_prenotazioni) $priv_mod_prenotazioni = substr($priv_mod_prenota,0,1);
if (!$priv_mod_costi_agg) $priv_mod_costi_agg = substr($priv_mod_prenota,8,1);
if (!$priv_vedi_tab) $priv_vedi_tab = risul_query($privilegi_annuali_utente,0,'priv_vedi_tab');
if (!$priv_vedi_tab_mesi) $priv_vedi_tab_mesi = substr($priv_vedi_tab,0,1);
if (!$priv_vedi_tab_prenotazioni) $priv_vedi_tab_prenotazioni = substr($priv_vedi_tab,1,1);
if (!$priv_vedi_tab_costi) $priv_vedi_tab_costi = substr($priv_vedi_tab,2,1);
if (!$priv_vedi_tab_periodi) $priv_vedi_tab_periodi = substr($priv_vedi_tab,3,1);
if (!$priv_vedi_tab_regole) $priv_vedi_tab_regole = substr($priv_vedi_tab,4,1);
if (!$priv_vedi_tab_appartamenti) $priv_vedi_tab_appartamenti = substr($priv_vedi_tab,5,1);
if (!$priv_vedi_tab_stat) $priv_vedi_tab_stat = substr($priv_vedi_tab,6,1);
if (!$priv_vedi_tab_doc) $priv_vedi_tab_doc = substr($priv_vedi_tab,7,1);
if (!$priv_ins_tariffe) $priv_ins_tariffe = risul_query($privilegi_annuali_utente,0,'priv_ins_tariffe');
if (!$priv_mod_tariffe) $priv_mod_tariffe = substr($priv_ins_tariffe,0,1);
if (!$priv_ins_costi_agg) $priv_ins_costi_agg = substr($priv_ins_tariffe,1,1);
} # fine if ($anno_utente_attivato == "SI")
} # fine if ($id_utente != 1)
else {
if (!$anno_utente_attivato) $anno_utente_attivato = "SI";
if (!$modifica_pers) $modifica_pers = "SI";
if (!$priv_crea_backup) $priv_crea_backup = "s";
if (!$inserimento_nuovi_clienti) $inserimento_nuovi_clienti = "SI";
if (!$modifica_clienti) $modifica_clienti = "SI";
if (!$vedi_clienti) $vedi_clienti = "SI";
if (!$priv_vedi_messaggi) $priv_vedi_messaggi = "s";
if (!$priv_vedi_beni_inv) $priv_vedi_beni_inv = "s";
if (!$priv_vedi_inv_mag) $priv_vedi_inv_mag = "s";
if (!$priv_vedi_inv_app) $priv_vedi_inv_app = "s";
if (!$priv_ins_nuove_prenota) $priv_ins_nuove_prenota = "s";
if (!$priv_ins_spese) $priv_ins_spese = "s";
if (!$priv_ins_entrate) $priv_ins_entrate = "s";
if (!$priv_mod_prenotazioni) $priv_mod_prenotazioni = "s";
if (!$priv_mod_costi_agg) $priv_mod_costi_agg = "s";
if (!$priv_vedi_tab_mesi) $priv_vedi_tab_mesi = "s";
if (!$priv_vedi_tab_prenotazioni) $priv_vedi_tab_prenotazioni = "s";
if (!$priv_vedi_tab_costi) $priv_vedi_tab_costi = "s";
if (!$priv_vedi_tab_periodi) $priv_vedi_tab_periodi = "s";
if (!$priv_vedi_tab_regole) $priv_vedi_tab_regole = "s";
if (!$priv_vedi_tab_appartamenti) $priv_vedi_tab_appartamenti = "s";
if (!$priv_vedi_tab_stat) $priv_vedi_tab_stat = "s";
if (!$priv_vedi_tab_doc) $priv_vedi_tab_doc = "s";
if (!$priv_mod_tariffe) $priv_mod_tariffe = "s";
if (!$priv_ins_costi_agg) $priv_ins_costi_agg = "s";
} # fine else if ($id_utente != 1)

if ($anno_utente_attivato == "SI") {

$mese_attuale = date("n",(time() + (C_DIFF_ORE * 3600)));
function nome_mese_menu ($mese_attuale) {
if ($mese_attuale > 12) $mese_attuale = $mese_attuale - 12;
if ($mese_attuale == 1) $MESE_ATT = "GENNAIO";
if ($mese_attuale == 2) $MESE_ATT = "FEBBRAIO";
if ($mese_attuale == 3) $MESE_ATT = "MARZO";
if ($mese_attuale == 4) $MESE_ATT = "APRILE";
if ($mese_attuale == 5) $MESE_ATT = "MAGGIO";
if ($mese_attuale == 6) $MESE_ATT = "GIUGNO";
if ($mese_attuale == 7) $MESE_ATT = "LUGLIO";
if ($mese_attuale == 8) $MESE_ATT = "AGOSTO";
if ($mese_attuale == 9) $MESE_ATT = "SETTEMBRE";
if ($mese_attuale == 10) $MESE_ATT = "OTTOBRE";
if ($mese_attuale == 11) $MESE_ATT = "NOVEMBRE";
if ($mese_attuale == 12) $MESE_ATT = "DICEMBRE";
return $MESE_ATT;
} # fine function nome_mese_menu

if ($idprenota_origine) $anno = $anno + 1;
if ($id_sessione) {
$sessione_anno_var = "id_sessione=$id_sessione";
if (substr($id_sessione,0,4) != $anno) $sessione_anno_var .= "&amp;anno=$anno";
} # fine if ($id_sessione)
else $sessione_anno_var = "anno=$anno";

if ($pag == "tabella.php" or $pag == "tabella2.php" or $pag == "tabella3.php" or $pag == "visualizza_tabelle.php" or $pag == "storia_soldi.php") $mostra_X = "SI";

echo"
 <div class=\"leftpanel\" >
         <div class=\"leftmenu\" >        
            <ul class=\"nav nav-tabs nav-stacked\">
				<li class=\"nav-header\">Navigation</li>
                ";
				if ($priv_ins_spese == "s" or 
				$priv_ins_entrate == "s" or 
				$priv_mod_tariffe != "n" or 
				$priv_ins_costi_agg != "n" or 
				($id_utente == 1 and $installazione_subordinata != "SI") or 
				($priv_mod_prenotazioni != "n" and $priv_mod_costi_agg == "s"))

				{
				if ($priv_ins_spese == "s" or $priv_ins_entrate == "s")
				echo "<li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-key2\"></i>".mex("INSERIRE","head.php")."</a>
				<ul><li><a href=\"./costi.php?$sessione_anno_var\"><i class=\"iconsweets-vault\"></i> ".mex("SPESE","head.php")."</a></li>";
				if ($priv_mod_tariffe != "n" or $priv_ins_costi_agg != "n") echo "<li><a href=\"./creaprezzi.php?$sessione_anno_var\"><i class=\"iconsweets-pricetags\"></i> ".mex("PREZZI","head.php")."</a></li>";
				if ($id_utente == 1 and $installazione_subordinata != "SI") echo "<li><a href=\"./crearegole.php?$sessione_anno_var\"><i class=\"iconsweets-book\"></i> ".mex("REGOLE","head.php")."</a></li>";
				if ($priv_mod_prenotazioni != "n" and $priv_mod_costi_agg == "s") echo "<li><a href=\"./punto_vendita.php?$sessione_anno_var\"><i class=\"iconsweets-cart\"></i> ".mex("P.TO&nbsp;VENDITA","head.php")."</a></li></ul></li>";
				}
				
				if ($priv_ins_nuove_prenota == "s") echo "<li><a href=\"./prenota.php?$sessione_anno_var\"><i class=\"iconsweets-flag\"></i>  ".mex("PRENOTAZIONE","head.php")."</a></li> ";


				if ($inserimento_nuovi_clienti != "NO" or ($modifica_clienti != "NO" and $vedi_clienti != "NO")) echo "<li><a href=\"./clienti.php?$sessione_anno_var\"><i class=\"iconsweets-admin\"></i>  ".mex("CLIENTE","head.php")."</a></li>";
		
				echo" <li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-ipad\"></i>  ".mex("TABELLE","head.php")."</a>";
				echo"<ul>";
				if ($priv_vedi_messaggi == "s") echo "<li><a href=\"./messaggi.php?$sessione_anno_var\"><i class=\"iconsweets-inbox\"></i>  ".mex("MESSAGGI","head.php")."</a></li>";    
				if ($priv_vedi_tab_costi != "n") 
				echo "<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=costi\"><i class=\"iconsweets-bag\"></i> ".mex("CASSE","head.php")."</a></li>";               	
				if ($priv_vedi_tab_regole != "n") echo "<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=regole\"><i class=\"iconsweets-book\"></i>  ".mex("REGOLE","head.php")."</a></li>";
				if ($priv_vedi_tab_inventario != "n") echo "<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=inventario\"><i class=\"iconsweets-list3\"></i>  ".mex("INVENTARIO","head.php")."</a></li>";
				if ($priv_vedi_tab_doc != "n") echo "<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=documenti\"><i class=\"iconsweets-pdf\"></i>  ".mex("DOCUMENTI","head.php")."</a></li>";
				if ($priv_vedi_tab_stat != "n") echo "<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=statistiche\"><i class=\"iconsweets-chart8\"></i>  ".mex("STATISTICHE","head.php")."</a></li>";
				if ($priv_vedi_tab_costi != "n") echo "<li><a href=\"./storia_soldi.php?$sessione_anno_var\"><i class=\"iconsweets-calculator\"></i>  ".mex("ENTRATE&nbsp;PREN.","head.php")."</a></li>";
								echo"</ul>
							</li>";			
		
				if ($priv_vedi_tab_mesi != "n") {
				if ($anno_corrente == ($anno + 1)) $mese_attuale = $mese_attuale + 12;
				if ($anno < $anno_corrente and @is_file(C_DATI_PATH."/selectperiodi$anno_corrente.1.php")) $mese_attuale = 1;
				echo"
				 <li class=\"dropdown\"><a  href=\"#\"><i class=\"iconsweets-tag\"></i>  ".mex("RESOVERVIEW","head.php")."</a>
                	<ul>
                    	<li><a href=\"./tabella.php?$sessione_anno_var&amp;mese=$mese_attuale\"><i class=\"iconsweets-month\"></i>  ".mex(nome_mese_menu($mese_attuale),"head.php")."</a></li>";
						for ($num1 = $mese_attuale + 1 ; $num1 < $mese_attuale + 12 ; $num1++) echo"
                        <li><a href=\"./tabella.php?$sessione_anno_var&amp;mese=".$num1."\"><i class=\"iconsweets-month\"></i>  ".mex(nome_mese_menu($num1),"head.php")."</a></li>";
						
						echo"
                    </ul>
                </li>";
				}
		
		
		
		
		
				if ($priv_vedi_tab_prenotazioni != "n") {
				echo "
				 <li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-airplane\"> </i> ".mex("ARRIVALDEPART","head.php")."</a>
                	<ul>
                    	<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni\"><i class=\"iconsweets-tag\"></i>  ".mex("PRENOTAZIONI","head.php")."</a></li>
                        <li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni&amp;sel_tab_prenota=tutte\"><i class=\"iconsweets-tag\"></i>  ".mex("TUTTE","head.php")."</a></li>
                        <li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni&amp;sel_tab_prenota=correnti\"><i class=\"iconsweets-tag\"></i>  ".mex("CORRENTI","head.php")."</a></li>
						
                        <li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni&amp;sel_tab_prenota=future\"><i class=\"iconsweets-tag\"></i>  ".mex("FUTURE","head.php")."</a></li>
						<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni&amp;sel_tab_prenota=correnti&amp;opz_cerc_pren=arr\"><i class=\"iconsweets-tag\"></i> ".mex("ARRIVI","head.php")."</a></li>
				 		<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=prenotazioni&amp;sel_tab_prenota=correnti&amp;opz_cerc_pren=part\"><i class=\"iconsweets-tag\"></i>  ".mex("PARTENZE","head.php")."</a></li>
			
						<li><form accept-charset=\"utf-8\" method=\"post\" action=\"visualizza_tabelle.php\"><div class=\"lifdrop\">
						<input type=\"hidden\" name=\"anno\" value=\"$anno\">
						<input type=\"hidden\" name=\"id_sessione\" value=\"$id_sessione\">
						<input type=\"hidden\" name=\"tipo_tabella\" value=\"prenotazioni\">
						<input type=\"hidden\" name=\"subtotale_selezionate\" value=\"1\">
						<input type=\"hidden\" name=\"num_cambia_pren\" value=\"1\">
						<input type=\"hidden\" name=\"cerca_id_passati\" value=\"1\">
						<b>&nbsp;".mex("NUMERO","head.php")."</b> <input id=\"ressearch\" type=\"text\" name=\"cambia1\" class=\"smallsel85\" size=\"5\">
						<input class=\"sbutton\" type=\"submit\" value=\"".mex("VAI","head.php")."\" style=\"font-size: 80%;\">
						&nbsp;</div></form></li></ul></li>";
} # fine if ($priv_vedi_tab_prenotazioni != "n")


				if ($priv_ins_nuove_prenota == "s" or 
				$priv_ins_spese == "s" or 
				$priv_ins_entrate == "s" or 
				$inserimento_nuovi_clienti != "NO" or 
				($modifica_clienti != "NO" and $vedi_clienti != "NO")) {
					//echo"<li><a href=\"dashboard.html\"><span class=\"iconfa-laptop\"></span> Dashboard</a></li>";
				}

				
			if ($vedi_clienti != "NO") {
				echo "
				 <li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-companies\"></i>CLIENTS</a>
                <ul>
					<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=clienti\"><i class=\"iconsweets-companies\"></i>  ".mex("CLIENTI","head.php")."</a></li>
					<li><form accept-charset=\"utf-8\" method=\"post\" action=\"visualizza_tabelle.php\"><div class=\"fdrop\">
					<input type=\"hidden\" name=\"anno\" value=\"$anno\">
					<input type=\"hidden\" name=\"id_sessione\" value=\"$id_sessione\">
					<input type=\"hidden\" name=\"tipo_tabella\" value=\"clienti\">
					<input id=\"clisearch\" type=\"text\" name=\"cognome_cerca\" size=\"8\">
					<input class=\"sbutton\" type=\"submit\" value=\"".mex("CERCA","head.php")."\">
					&nbsp;</div></form></li>
                </ul>
                </li>
";
} # fine if ($vedi_clienti != "NO")
	
				
				
				

				
				if ($priv_vedi_tab_mesi != "n" or $priv_vedi_tab_prenotazioni != "n" or $vedi_clienti != "NO" or $priv_vedi_tab_costi != "n" or $priv_vedi_tab_periodi != "n" or $priv_vedi_tab_appartamenti != "n" or $priv_vedi_tab_regole != "n" or $priv_vedi_messaggi == "s") {
if ($priv_vedi_messaggi == "s" and $numconnessione) {
$tablemessaggi = $PHPR_TAB_PRE."messaggi";
$adesso = date("Y-m-d H:i:s",(time() + (C_DIFF_ORE * 3600)));
$messaggi = esegui_query("select idmessaggi from $tablemessaggi where datavisione < '$adesso' and idutenti_visto $LIKE '%,$id_utente,%'");
if (numlin_query($messaggi) > 0) {
$star = "<b style=\"color: red;\">*</b>";
$gt = "<b style=\"color: red; text-decoration: none;\">&gt;</b>";
$lt = "<b style=\"color: red; text-decoration: none;\">&lt;</b>";
} # fine if (numlin_query($messaggi) > 0)
} # fine if ($priv_vedi_messaggi == "s" and $numconnessione)
				
}



if ($priv_vedi_tab_periodi != "n") {
echo "
				 <li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-pricetags\"></i> FINANCIAL</a>
                	<ul>
                    	<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=periodi\"><i class=\"iconsweets-pricetag\"></i>".mex("TARIFFE","head.php")."</a></li>
                        <li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=periodi#tab_costi_agg\"><i class=\"iconsweets-paperclip\"></i>  ".mex("COSTI AGGIUNTIVI","head.php")."</a></li>
                        <li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=periodi#tab_caparre\"><i class=\"iconsweets-icecream\"></i>  ".mex("CAPARRE E TASSE","head.php")."</a></li>
                    </ul>
                </li>
";
} # fine if ($priv_vedi_tab_periodi != "n")

if ($priv_vedi_tab_appartamenti != "n") {
$fr_APPARTAMENTI = mex("APPARTAMENTI","unit.php");
if (strlen($fr_APPARTAMENTI) > 11) $fr_APPARTAMENTI = substr($fr_APPARTAMENTI,0,6).".";

echo "
<li><a href=\"./visualizza_tabelle.php?$sessione_anno_var&amp;tipo_tabella=appartamenti\"><i class=\"iconsweets-apartment\"></i> $fr_APPARTAMENTI</a></li>";


} # fine if ($priv_vedi_tab_appartamenti != "n")
//} # fine if ($priv_vedi_tab_mesi != "n" or $priv_vedi_tab_prenotazioni != "n" or...
if ($modifica_pers != "NO" or ($priv_crea_backup == "s" and $installazione_subordinata != "SI")) {
echo "
				 <li class=\"dropdown\"><a href=\"#\"><i class=\"iconsweets-frames\"></i>  " .mex("CONFIGURA","head.php")."</a>
                	<ul>
                    	<li><a href=\"./personalizza.php?$sessione_anno_var\"><i class=\"iconsweets-settings2\"></i>  ".mex("CONFIGURA","head.php")."</a></li>";
						if ($id_utente == 1) {
                          if ($installazione_subordinata != "SI") {
							  echo"
							    <li><a href=\"./gestione_utenti.php?$sessione_anno_var\"><i class=\"iconsweets-users\"></i>  ".mex("UTENTI","head.php")."</a></li>
								 <li><a href=\"./crea_modelli.php?$sessione_anno_var\"><i class=\"iconsweets-document\"></i>  ".mex("SITO WEB","head.php")."</a></li>";
								if (C_RESTRIZIONI_DEMO_ADMIN != "SI" and C_CREA_SUBORDINAZIONI != "NO") echo "
								<li><a href=\"./interconnessioni.php?$sessione_anno_var\"><i class=\"iconsweets-repeat\"></i>  ".mex("INTERCONN.","head.php")."</a></li> ";
								//} # fine if ($id_utente == 1)
								if ($priv_crea_backup == "s" and $installazione_subordinata != "SI") echo "
								<li><a href=\"./crea_backup.php?$sessione_anno_var\"><i class=\"iconsweets-ipod\"></i>  ".mex("BACKUP","head.php")."</a></li>";

								if ($modifica_pers != "NO") echo "
								<li><a href=\"./personalizza.php?$sessione_anno_var#contratti\"><i class=\"iconsweets-documents\"></i>  ".mex("DOCUMENTI","head.php")."</a></li>";
				
								echo "</ul></li>";
						  }
						}
						
							
} # fine if ($installazione_subordinata != "SI")

 echo "       </div><!--leftmenu-->
 </div><!-- leftpanel -->
 
     <div class=\"rightpanel\">
        
        <ul class=\"breadcrumbs\">
            <li><a href=\"dashboard.html\"><i class=\"iconfa-home\"></i></a> <span class=\"separator\"></span></li>
            <li>Dashboard</li>
            <li class=\"right\">
                    <a href=\"\" data-toggle=\"dropdown\" class=\"dropdown-toggle\"><i class=\"icon-tint\"></i> Color Skins</a>
                    <ul class=\"dropdown-menu pull-right skin-color\">
                        <li><a href=\"default\">Default</a></li>
                        <li><a href=\"navyblue\">Navy Blue</a></li>
                        <li><a href=\"palegreen\">Pale Green</a></li>
                        <li><a href=\"red\">Red</a></li>
                        <li><a href=\"green\">Green</a></li>
                        <li><a href=\"brown\">Brown</a></li>
                    </ul>
            </li>
        </ul>
        
        <div class=\"pageheader\">
            <form action=\"results.html\" method=\"post\" class=\"searchbar\">
                <input type=\"text\" name=\"keyword\" placeholder=\"To search type and hit enter...\" />
            </form>
            <div class=\"pageicon\"><span class=\"iconfa-hdd\"></span></div>

            <div class=\"pagetitle\">
            </div>

			</div><!--pageheader-->
        
        <div class=\"maincontent\">
            <div class=\"maincontentinner\">
                          
				";

if ($idprenota_origine) $anno = $anno - 1;

if ($mostra_X == "SI") {
if (@is_array($_POST)) reset($_POST);
for ($num1 = 0 ; $num1 < count($_POST) ; $num1++) {
$lista_var_X .= "&amp;".key($_POST)."=".$_POST[key($_POST)];
next($_POST);
} # fine for $num1
if (@is_array($_GET)) reset($_GET);
for($num1 = 0 ; $num1 < count($_GET); $num1++) {
$lista_var_X .= "&amp;".key($_GET)."=".$_GET[key($_GET)];
next($_GET);
} # fine for $num1
if ($lista_var_X) {
$lista_var_X = "?show_bar=NO".$lista_var_X;
echo "<td style=\"width: 10px;\">
<b><a class=\"nav\" style=\"color: #666666;\" href=\"$pag$lista_var_X\"><b>X</b></a></b></td>";
} # fine if ($lista_var_X)
else echo "<td style=\"width: 10px;\"></td>";
} # fine if ($mostra_X == "SI")



} # fine if ($anno_utente_attivato == "SI")

} # fine if ($show_bar != "NO")

//if ($pag != "visualizza_contratto.php" or $show_bar != "NO") {
//if ($show_bar != "NO") echo "</div><div id=\"contentbox\">";
//else echo "</div><table id=\"contentbox\" cellspacing=0 cellpadding=0><tr><td valign=\"top\">";
//} # fine if ($pag != "visualizza_contratto.php" or $show_bar != "NO")


//if ($pag != "inizio.php" and $show_bar != "NO") echo "<div id=\"topsp\" style=\"height: 7px;\"></div>
//";

?>