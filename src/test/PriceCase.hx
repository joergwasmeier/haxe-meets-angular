package test;
import utest.Assert;
import js.Browser;

class PriceCase {
    public function new() {}

    public function setup(){
        if (js.Browser.document.getElementById("price") == null){
            Assert.fail('Price DOM not found! Please insert <price id="priced" value="10" /> to continue Test.');
        }
    }

    public function testPriceDom(){
        Assert.notNull(js.Browser.document.getElementById("price"));
        Assert.equals("$10.00", js.Browser.document.getElementById("price").innerText);
    }

}
