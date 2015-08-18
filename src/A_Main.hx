package ;
import angular.service.Scope;
import angular.Angular;

class A_Main {
    /*
        Haxe start point
     */
    static function main() {
        trace("Start");

        new A_Main();
    }

    public function new() {

        // App Controller
        function appController(scope:Scope) {
            scope.set("data", { appName : "Hallo Welt"});
        };

        // App Module
        var module = Angular.module("myModule", []).controller("AppController", appController);
    }
}