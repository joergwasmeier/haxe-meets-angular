package de.jw.ham.directive;
import de.jw.ham.lib.IAngularDirective;
import de.jw.ham.lib.AngularDirective;

class Price extends AngularDirective implements IAngularDirective{
    public var name:String = "price";

    private var restrict:String = "E";
    @:isVar private var scope(get, set):Dynamic;

    private var template:String = '<span ng-show="value == 0">kostenlos</span><span ng-show="value > 0">{{value | currency}}</span>';

    public function new():Void {
        this.scope = get_scope();

        super();
    }

    function get_scope():Dynamic {
        return {
            value: "="
        };
    }

    function set_scope(value:Dynamic):Dynamic {
        this.scope = value;
        return value;
    }
}