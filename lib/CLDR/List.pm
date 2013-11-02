class CLDR::List is rw;

has $.locale  = 'root';
has %!pattern = (
    start  => '{0}, {1}',
    middle => '{0}, {1}',
    end    => '{0}, {1}',
    2      => '{0}, {1}',
);

method format (*@list) {
    return do given @list {
        when 0 { '' }
        when 1 { ~@list[0] }
        when 2 { %!pattern<2>.trans: <{0} {1}> => @list }
        when * {
            my $format = %!pattern<end>.trans: <{0} {1}> => @list[*-2..*-1];

            if (* > 3) {
                for @list[1..*-3] -> $element {
                    $format = %!pattern<middle>.trans: <{0} {1}> => ($element, $format);
                }
            }

            %!pattern<start>.trans: <{0} {1}> => (@list[0], $format);
        }
    }
}
