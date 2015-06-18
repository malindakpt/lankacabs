/**
 * Created by MalindaK on 6/18/2015.
 */
$(function() {
    var types = [
        "Car",
        "Van",
        "Bus",
        "Truck",
        "3-wheel",
        "N/A"
    ];
    var availableTags = [
        "ISUZU","NISSAN","TOYOTA","MITSUBHISHI","PEUGEOUT","BMW","BENZ","VOLVO","RENAULT","MAZDA","TATA","BAJAJ","TVS","LAYLAND"
    ];
    $( "#tags" ).autocomplete({
        source: availableTags
    });
    $( "#autoTypes" ).autocomplete({
        source: types
    });
});