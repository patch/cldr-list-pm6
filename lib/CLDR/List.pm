class CLDR::List is rw;

constant @placeholders = <{0} {1}>;
constant %patterns = {
     root => { middle => '{0}, {1}', 2 => '{0}, {1}' },
     ar => { middle => '{0}، {1}', end => '{0}، و {1}', 2 => '{0} و {1}' },
     ca => { 2 => '{0} i {1}' },
     cs => { 2 => '{0} a {1}' },
     da => { 2 => '{0} og {1}' },
     de => { 2 => '{0} und {1}' },
     el => { 2 => '{0} και {1}' },
     en => { end => '{0}, and {1}', 2 => '{0} and {1}' },
     'en-AU' => { 2 => '{0} and {1}' },
     'en-CA' => { end => '{0}, and {1}', 2 => '{0} and {1}' },
     'en-GB' => { 2 => '{0} and {1}' },
     'en-HK' => { 2 => '{0} and {1}' },
     'en-IN' => { 2 => '{0} and {1}' },
     es => { 2 => '{0} y {1}' },
     fi => { 2 => '{0} ja {1}' },
     fr => { 2 => '{0} et {1}' },
     he => { 2 => '{0} ו{1}' },
     hi => { end => '{0}, और {1}', 2 => '{0} और {1}' },
     hr => { 2 => '{0} i {1}' },
     hu => { 2 => '{0} és {1}' },
     it => { end => '{0}, e {1}', 2 => '{0} e {1}' },
     ja => { middle => '{0}、{1}', 2 => '{0}、{1}' },
     ko => { 2 => '{0} 및 {1}' },
     nb => { 2 => '{0} og {1}' },
     nl => { 2 => '{0} en {1}' },
     pl => { 2 => '{0} i {1}' },
     pt => { 2 => '{0} e {1}' },
     'pt-PT' => { 2 => '{0} e {1}' },
     ro => { 2 => '{0} și {1}' },
     ru => { 2 => '{0} и {1}' },
     sk => { 2 => '{0} a {1}' },
     sl => { 2 => '{0} in {1}' },
     sr => { 2 => '{0} и {1}' },
     sv => { 2 => '{0} och {1}' },
     th => { middle => '{0} {1}', end => '{0} และ{1}', 2 => '{0}และ{1}' },
     tr => { 2 => '{0} ve {1}' },
     vi => { 2 => '{0} và {1}' },
     uk => { 2 => '{0} та {1}' },
     zh => { middle => '{0}、{1}', 2 => '{0}和{1}' },
     'zh-Hant' => { middle => '{0}、{1}', 2 => '{0}和{1}' },
};

has $.locale = 'root';
has $!previous-locale;
has %!pattern;

method format (*@list) {
    self!update-pattern;

    return given @list {
        when 0 { '' }
        when 1 { ~@list[0] }
        when 2 { %!pattern<2>.trans(@placeholders => @list) }
        when * {
            my $format = %!pattern<end>.trans(
                @placeholders => @list[*-2,*-1]
            );

            if (* > 3) {
                for @list[1..*-3] -> $element {
                    $format = %!pattern<middle>.trans(
                        @placeholders => ($element, $format)
                    );
                }
            }

            %!pattern<start>.trans(
                @placeholders => (@list[0], $format)
            );
        }
    }
}

method !update-pattern {
    return if $!previous-locale ~~ $!locale;

    %!pattern = %patterns{$.locale} || %patterns<root>;
    %!pattern<middle> //= %patterns<root><middle>;
    %!pattern<start>  //= %!pattern<middle>;
    %!pattern<end>    //= %!pattern<2>;
    $!previous-locale = $.locale;
}
