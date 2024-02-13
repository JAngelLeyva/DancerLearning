package Tutorial;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/formulario' => sub {
    template '/formulario';
};

post '/formulario' => sub {
    template '/respuesta_formulario', { nombre => params->{nombre}, apellido => params->{apellido} };
};

true;
