
import js.html.BroadcastChannel;
import pages.*;
import js.Browser;
import com.vige.core.Body;
import com.vige.core.Navigate;




class Main {
  static function main() {
    var body = new Body();
    body.font("Arial", "400");
    body.setGlobalTitle("Vige electron app");
    
    Navigate.routes = [
      new HomePage(),
      new HeiPage()
    ];

    var url = Browser.location.pathname;
    if(Browser.location.hash != "") {
      url = Browser.location.hash;
    }
    Navigate.to(null, {url: url , main: true});

    Browser.window.addEventListener('popstate', function(e) {
      Navigate.navigationEvent();
    });
    body.init();
  }
}



