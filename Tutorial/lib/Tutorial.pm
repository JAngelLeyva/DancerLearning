package Tutorial;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

# Esta ruta es la que mostrará el formulario
get '/formulario' => sub {
    template '/formulario';    # Usa la plantlla views/formulario.tt
};

# Esta ruta procesará el formulario enviado (method="post')
post '/formulario' => sub {
    # Em método params permite acceder a los parámetros recibidos, internamente es un hash

    # Usa la plantilla views/respuesta_formulario.tt e incluye algunas variables
    template '/respuesta_formulario',
      { nombre => params->{nombre}, apellido => params->{apellido}
      }; 
};

true;
