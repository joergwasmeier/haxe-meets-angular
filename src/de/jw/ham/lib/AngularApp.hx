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
            trace(directive);
            return directive;
        });

        /*
        module.directive('price', function(){
            return {
                restrict:"E",
                scope:{
                    value: "="
                },
                template: '<span ng-show="value == 0">kostenlos</span>' +
                '<span ng-show="value > 0">{{value | currency}}</span>'
            };
        });
        */
    }


    private function configFunction():Void {
        
    }
}