class CLDR::List;

has $.locale = 'root';

method format (*@list) {
    return @list.join(' ');
}
