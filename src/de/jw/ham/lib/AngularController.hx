package de.jw.ham.lib;
class AngularController {
    public var name:String;

    public function new() {
        name = Type.getClassName(Type.getClass(this));
    }
}
