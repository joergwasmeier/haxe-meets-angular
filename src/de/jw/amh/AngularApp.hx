package de.jw.amh;
import angular.service.Scope;
import angular.Module;
import angular.Angular;

class AngularApp {
    private static var module:Module;

    public function new(rootModuleName:String, ?dependencies:Array<Dynamic>) {
        module = Angular.module(rootModuleName, function(){});
    }

    public static function registerController(controllerName:String, controllerFunction:Scope->Void):Void{
        module.controller(controllerName, controllerFunction);
    }

    private function configFunction():Void {
        
    }
}