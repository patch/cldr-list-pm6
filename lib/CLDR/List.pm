class CLDR::List is rw;

constant @placeholders = <{0} {1}>;
constant %patterns = {
    root => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0}, {1}',
        2      => '{0}, {1}',
    },
    ar => {
        start  => '{0}، {1}',
        middle => '{0}، {1}',
        end    => '{0}، و {1}',
        2      => '{0} و {1}',
    },
    ca => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} i {1}',
        2      => '{0} i {1}',
    },
    cs => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} a {1}',
        2      => '{0} a {1}',
    },
    da => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} og {1}',
        2      => '{0} og {1}',
    },
    de => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} und {1}',
        2      => '{0} und {1}',
    },
    el => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} και {1}',
        2      => '{0} και {1}',
    },
    en => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0}, and {1}',
        2      => '{0} and {1}',
    },
    'en-AU' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} and {1}',
        2      => '{0} and {1}',
    },
    'en-CA' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0}, and {1}',
        2      => '{0} and {1}',
    },
    'en-GB' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} and {1}',
        2      => '{0} and {1}',
    },
    'en-HK' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} and {1}',
        2      => '{0} and {1}',
    },
    'en-IN' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} and {1}',
        2      => '{0} and {1}',
    },
    es => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} y {1}',
        2      => '{0} y {1}',
    },
    fi => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} ja {1}',
        2      => '{0} ja {1}',
    },
    fr => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} et {1}',
        2      => '{0} et {1}',
    },
    he => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} ו{1}',
        2      => '{0} ו{1}',
    },
    hi => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0}, और {1}',
        2      => '{0} और {1}',
    },
    hr => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} i {1}',
        2      => '{0} i {1}',
    },
    hu => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} és {1}',
        2      => '{0} és {1}',
    },
    it => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0}, e {1}',
        2      => '{0} e {1}',
    },
    ja => {
        start  => '{0}、{1}',
        middle => '{0}、{1}',
        end    => '{0}、{1}',
        2      => '{0}、{1}',
    },
    ko => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} 및 {1}',
        2      => '{0} 및 {1}',
    },
    nb => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} og {1}',
        2      => '{0} og {1}',
    },
    nl => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} en {1}',
        2      => '{0} en {1}',
    },
    pl => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} i {1}',
        2      => '{0} i {1}',
    },
    pt => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} e {1}',
        2      => '{0} e {1}',
    },
    'pt-PT' => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} e {1}',
        2      => '{0} e {1}',
    },
    ro => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} și {1}',
        2      => '{0} și {1}',
    },
    ru => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} и {1}',
        2      => '{0} и {1}',
    },
    sk => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} a {1}',
        2      => '{0} a {1}',
    },
    sl => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} in {1}',
        2      => '{0} in {1}',
    },
    sr => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} и {1}',
        2      => '{0} и {1}',
    },
    sv => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} och {1}',
        2      => '{0} och {1}',
    },
    th => {
        start  => '{0} {1}',
        middle => '{0} {1}',
        end    => '{0} และ{1}',
        2      => '{0}และ{1}',
    },
    tr => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} ve {1}',
        2      => '{0} ve {1}',
    },
    vi => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} và {1}',
        2      => '{0} và {1}',
    },
    uk => {
        start  => '{0}, {1}',
        middle => '{0}, {1}',
        end    => '{0} та {1}',
        2      => '{0} та {1}',
    },
    zh => {
        start  => '{0}、{1}',
        middle => '{0}、{1}',
        end    => '{0}和{1}',
        2      => '{0}和{1}',
    },
    'zh-Hant' => {
        start  => '{0}、{1}',
        middle => '{0}、{1}',
        end    => '{0}和{1}',
        2      => '{0}和{1}',
    },
};

has $.locale = 'root';
has %!pattern;

method format (*@list) {
    %!pattern = %patterns{$.locale} || %patterns<root>;

    given @list {
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
