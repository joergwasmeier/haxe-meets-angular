package ;

import de.jw.ham.directive.Price;
import de.jw.ham.AppController;
import de.jw.ham.lib.AngularApp;

class A_Main extends AngularApp {
    /*
        Haxe start point
     */
    static function main() {
        new A_Main();
    }

    public function new() {
        super("myModule");

        AngularApp.registerController(new AppController());
        AngularApp.registerDirective(new Price());

    }
}