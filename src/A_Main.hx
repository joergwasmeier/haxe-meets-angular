package ;
import de.jw.amh.AngularApp;
import angular.service.Scope;

class A_Main extends AngularApp {
    /*
        Haxe start point
     */
    static function main() {
        new A_Main();
    }

    public function new() {
        super("myModule");

        AngularApp.registerController("AppController", function (scope:Scope) {
            scope.set("data", { appName : "Hallo Welt 2"});
        });

    }
}