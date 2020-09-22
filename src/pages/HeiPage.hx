package pages;

import com.vige.components.*;
import com.vige.core.*;
import com.vige.utils.*;
import com.vige.support.Enums;

class HeiPage extends DynamicComponent {

  public function new() {}

  override public function component(): Page {
    page = new Page({
      route: "#/test/newpage",
      child: new Container({
        margin: Margin.fromTRBL(-60.0, 0.0, 0.0, 0.0),
        color: new Color({backgroundColor: Colors.fromString("#fafafa")}),
        size: new Size({height: "100%", width: "100%"}),
        child: new Center({
          alignment: CenterAlignment.Both,
          child: new Column({
            mainAxisAlignment: MainAxisAlignment.Center,
            children: [
              new Text("NEW PAGE", {color: new Color({color: Colors.fromString("#2e3440")})}),
              new Button({
                child: new Text("Tilbake"),
                onClick: function() {
                  Navigate.to(this, {url: "/", main: false});
                }
              })
            ]
          }),
        }),
      }),
    });
    return page;
  }
}
