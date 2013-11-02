class CLDR::List;

has $.locale is rw = 'root';

method format (*@list) {
    return @list.join(' ');
}
