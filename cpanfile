requires 'perl', '5.008005';

# Mojo modules do not list version
requires 'Mojo::Base',               '0';
requires 'Mojo::UserAgent',          '0';

on test => sub {
    requires 'Test::More', '0.88';
    requires 'Test::RequiresInternet', '0.02';
};
