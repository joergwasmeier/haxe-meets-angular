package de.jw.ham.lib;
import angular.Module;
import angular.Angular;

class AngularApp {
    private static var module:Module;

    public function new(rootModuleName:String, ?dependencies:Array<Dynamic>) {
        module = Angular.module(rootModuleName, function(){});
    }

    public static function registerController(controller:IAngularController):Void{
        module.controller(controller.name, controller.initalState);
    }

    public static function registerDirective(directive:IAngularDirective):Void{
        module.directive(directive.name, function(){
            return directive;
        });
    }


    private function configFunction():Void {
        
    }
}