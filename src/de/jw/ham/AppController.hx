package de.jw.ham;
import angular.service.Scope;
import de.jw.ham.lib.IAngularController;
import de.jw.ham.lib.AngularController;

class AppController extends AngularController implements IAngularController{

    public function initalState(scope:Scope):Void {
        scope.set("data", { appName : "Hallo Welt 22"});
    }

}