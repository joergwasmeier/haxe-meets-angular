package de.jw.ham;
import angular.service.Http;
import angular.service.Scope;
import de.jw.ham.lib.IAngularController;
import de.jw.ham.lib.AngularController;

class AppController extends AngularController implements IAngularController{

    public var appName:String = "hallo";

    public function initalState(scope:Scope):Void {
        scope.set("data", this);
    }

}