package de.jw.ham.lib;
import angular.service.Scope;
interface IAngularController {
    public var name:String;
    public function initalState(scope:Scope):Void;
}
