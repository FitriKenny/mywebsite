from flask_frozen import Freezer

from flask import Flask

app = Flask(__name__)

## Destination directory

app.config['FREEZER_DESTINATION'] = "./output/"

freezer = Freezer(app)

@app.route("/")
def home():
    import os
    from mako.template import Template as T
    from mako.lookup import TemplateLookup
    title="My start up"

    javascript="""
      $(document).ready(function() {
        $("#request").click(function() {
          var url = "./thankyou.html";    
          $(location).attr('href',url);
        });
      });

      $(window).load(function(){

        document.body.style.zoom = 1.0
        document.body.style.opacity="1";
})
    """
    lookup = TemplateLookup(directories=[app.lookup])
    myT = lookup.get_template('index.mako')
    return myT.render(title=title,footer=app.footer,javascript=javascript)

@app.route("/thankyou.html")
def thankyou():
    import os
    from mako.template import Template as T
    from mako.lookup import TemplateLookup
    title="Thank you"
 
    javascript="""

      $(window).load(function(){

        document.body.style.opacity="1";
})
    """   
    lookup = TemplateLookup(directories=[app.lookup])
    myT = lookup.get_template('thankyou.mako')
    
    
    return myT.render(title=title,footer=app.footer,javascript=javascript)

@app.route("/about.html")
def about():
    import os
    from mako.template import Template as T
    from mako.lookup import TemplateLookup
    title="About Us"

    javascript="""

      $(window).load(function(){

        document.body.style.opacity="1";
})
    """   
    lookup = TemplateLookup(directories=[app.lookup])
    myT = lookup.get_template('about.mako')
    return myT.render(title=title,footer=app.footer,javascript=javascript)



if __name__ == '__main__':
    from datetime import date
    import os
    app.lookup=os.getcwd()+"/base"
    app.footer="""
      
      <footer class="mainfooter" role="contentinfo" >
        <div class="footer-middle">
          <div class="container-fluid">
            <div class="row">
        <div class="col-md-1 col-sm-1"> 
        </div>           
            
            
        <div class="col-md-2 col-sm-2">
                <!--Column1-->
        <div class="footer-pad">
          <h4>Links:</h4>
          <ul class="list-unstyled">
            <li><a href="#"></a></li>
            <li><a href="#">link1 </a></li>
            <li><a href="#">link2</a></li>
          </ul>
        </div>
      </div>
              <hr>
              <div class="col-md-3 col-sm-3">
                <!--Column1-->
                <div class="footer-pad">
                </div>
              </div>
              <div class="col-md-2">
                <h4>Follow Us</h4>
                <ul class="social-network social-circle">
                  <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>
              </div>

        <div class="col-md-1 col-sm-1"> 
        </div>           
            
            </div>
            <div class="row">
              <div class="col-md-12 copy">
                <p class="text-center">&copy; Copyright 2019 - Company Name.  All rights reserved.</p>
              </div>
              </div>

            <div class="row">
              <div class="col-md-12 copynb">
                <p class="text-center">Last Updated: {today} </p>
                  </div>

            </div>
            

          </div>
        </div>
      </footer>

    
    """.format(today=str(date.today()) )
 
    freezer.freeze()
