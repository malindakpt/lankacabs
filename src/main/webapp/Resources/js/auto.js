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
        "ActionScript",
        "AppleScript",
        "Asp",
        "BASIC",
        "C",
        "C++",
        "Clojure",
        "COBOL",
        "ColdFusion",
        "Erlang",
        "Fortran",
        "Groovy",
        "Haskell",
        "Java",
        "JavaScript",
        "Lisp",
        "Perl",
        "PHP",
        "Python",
        "Ruby",
        "Scala",
        "Scheme"
    ];
    $( "#tags" ).autocomplete({
        source: availableTags
    });
    $( "#autoTypes" ).autocomplete({
        source: types
    });
});