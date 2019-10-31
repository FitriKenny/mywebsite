<%inherit file="base.html"/>

    <div class="container-fluid">


      <div class="row-padded-nbg  row">
        <div class="col-lg-12">
          <h1>Company Name</h1>
          <h2>tagline</h2>

          <h3>
            Company  description
          </h3>

          <p> 
            Minimalist single page responsive website for startups.

        </div>
      </div>
      <div class="row-padded-nbg  row">
        <div class="col-lg-12">
        <img src="./imgs/spacer.png" class="img-circle" alt="spacer" height="182" width="82">

        </div>
      </div>
      <div class="row-padded-carousel row">
        <div class="col-lg-12">


          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="./imgs/slide1.svg" width="200" height="400" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="./imgs/slide2.svg" width="200" height="400" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="./imgs/slide3.svg" width="200" height="400" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

        </div>
      </div>



      <div class="row-padded-carousel row">
        <div class="col-lg-12" height="100px">
        <img src="./imgs/spacercarousel.png" class="img-circle" alt="spacer" height="182" width="82">
          </div>

        </div>
 

      <div class="row-padded row">

        <div class="col-lg-3"></div>
        <div class="col-lg-6 col-lg-offset-6 panel panel-default">
          <h1 align="center">Contact Form</h1>
          <p class="input-group">
            <span class="input-group-addon"><span class="icon-envelope"></span></span>
            <input type="text" class="form-control input-lg" name="email" id="email" placeholder="your@email.com" />
          </p>
          <p class="help-block text-center"><small>We won't send you spam.</small></p>
          <p class="text-center">
            <button id="request" class="btn btn-success btn-lg  btn-primary">Request our Executive Summary</button>
          </p>  
        </div>

        <div class="col-lg-3">
        </div>

      </div><!-- //row -->
      <div class="row-padded row">
      </div><!-- //row -->
      <div class="row-padded row">
      </div><!-- //row -->
      
