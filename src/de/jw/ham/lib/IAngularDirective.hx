package de.jw.ham.lib;
interface IAngularDirective {

    public var name:String;
    private var template:String;

    private var restrict:String;
    private var scope(get_scope, null):Dynamic;

    private function get_scope():Dynamic;

}
