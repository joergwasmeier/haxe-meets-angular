package ;
import de.jw.ham.directive.Price;
import utest.ui.common.HeaderDisplayMode.SuccessResultsDisplayMode;
import utest.ui.Report;
import utest.Runner;
import haxe.Timer;
import js.html.HTMLDocument;
import test.PriceCase;
import js.Browser;

class T_Main {

    static function main() {
        new T_Main();
    }

    public function new(){
        untyped Browser.window.__karma__.start= function(){
            var doc:HTMLDocument = Browser.document;
            doc.getElementsByTagName("body").item(0).innerHTML += '<div id="myModule" ng-app="myModule" ng-controller="de.jw.ham.AppController">
            <price id="priced" value="10" />
            </div>';

            var main:A_Main = new A_Main();

            Timer.delay(function(){
                var r = new Runner();
                r.addCase(new PriceCase());

                Report.create(r,SuccessResultsDisplayMode.AlwaysShowSuccessResults);

                r.onComplete.add(function(o){
                    untyped Browser.window.__karma__.complete();
                });

                r.run();
            },200);
        }
    }
}
