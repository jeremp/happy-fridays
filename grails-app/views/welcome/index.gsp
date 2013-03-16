<!DOCTYPE html>
<html>
  <head>
    <title>Happy Friday</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->   
    <link href="<g:resource dir="css" file="bootstrap.min.css"/>" rel="stylesheet" media="screen">
    
    <style type="text/css">
    
    	BODY{
    		background: url("<g:resource dir="images" file="blur.jpg"/>") repeat scroll 0 0 transparent;
    	}
    	#myUnit{
    		background-color: #EEEEEE;    		
    		background: none repeat scroll 0 0 rgba(255, 255, 255, 0.5);    		
    		border-radius: 6px 6px 6px 6px;
		    color: inherit;		    
		    margin-top: 30px;
		    padding: 60px;    	
    	}
    	.alert{
    		margin-bottom: 10px;
    	}
    </style>
    
  </head>
  <body>
    
    
    <div class="container" id="myUnit">
    
    	<h1>
			<img alt="icone cupcake" src="<g:resource dir="images" file="cupcake.png"/>" />
    		Happy Friday !
    	</h1>
  	
  		<div class="row">
  			<div class="span4">
  				<h3>C'est quoi ?</h3>
  				<p>Chaque Vendredi matin une personne volontaire de l'open space ISPM (démat.) apporte les croissants. C'est <b>le</b> "social event" de la semaine.</p>
  			</div>
  			<div class="span4">
  				<h3>Comment ça marche ?</h3>
  				<p>C'est très simple, une liste des candidats est établie et chaque Vendredi le candidat à qui c'est le tour apporte des croissants ou une autre friandise de son choix... il y a même parfois des gateaux "maisons".</p>
  			</div>
  			<div class="span4">
  				<h3>Je veux participer !</h3>
  				<p>Merci à toi de contribuer à la vie sociale de ton bureau ! il suffit de te signaler dans l'open space et on t'ajoutera à la liste.</p>
  			</div>
		</div>
  		
  		
  		<h3>Vendredi prochain c'est au tour de :</h3>
 
  		<g:each in="${peoples}" var="p">
  			<g:if test="${p.isNext==true}">
  				<div class="alert alert-success">
  					<img src="<g:resource dir="images" file="star.png"/>" style="margin-right: 5px;"/><b>${p.firstName} ${p.lastName}</b>
				</div>
  			</g:if>
  			<g:else>
  				<div class="alert alert-info">
  					<img src="<g:resource dir="images" file="time.png"/>" style="margin-right: 5px;"/><b>${p.firstName} ${p.lastName}</b>
  					<g:if test="${p.lastTime}">
  						<div class="text-right">Ca a été son tour le <g:formatDate format="dd/MM/yyyy" date="${p.lastTime}"/></div>
  					</g:if>
				</div>
  			</g:else>  			
  		</g:each>
  		
  		<h4>A propos</h4>
  		<div>
  			<p>
  				<small>Application écrite en 15 minutes avec <a href="http://grails.org/" target="_blank">Grails</a>. Déployée dans le cloud en 2 minutes avec <a href="http://www.cloudfoundry.com/" target="_blank">CloudFoundry</a></small>
			</p>
  		</div>  		  
  	</div>
  	
    <script src="http://code.jquery.com/jquery.js"></script>    
    <script src="<g:resource dir="js" file="bootstrap.min.js"/>"></script>
  </body>
</html>