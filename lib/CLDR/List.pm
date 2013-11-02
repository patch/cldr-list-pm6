class CLDR::List is rw;

constant @placeholders = <{0} {1}>;

has $.locale  = 'root';
has %!pattern = (
    start  => '{0}, {1}',
    middle => '{0}, {1}',
    end    => '{0}, {1}',
    2      => '{0}, {1}',
);

method format (*@list) {
    given @list {
        when 0 { '' }
        when 1 { ~@list[0] }
        when 2 { %!pattern<2>.trans(@placeholders => @list) }
        when * {
            my $format = %!pattern<end>.trans(
                @placeholders => @list[*-2..*-1]
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
