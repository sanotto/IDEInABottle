% rebase('layout.tpl')

<div id="main" style="width: 30%; height:30%; margin: 0px auto;" > </div>

<script type="text/javascript">

    //Configuracci�n del objeto
    def={
	    name: 'form_login',
        url:'login',
        header:"{{title}}",
        fields: [
					{ name: 'user_name',  type: 'text', required: true, html: { caption: 'Usuario', attr: 'style="width: 300px"' }  },
					{ name: 'user_pass',  type: 'pass', required: true, html: { caption: 'Contrase�a', attr: 'style="width: 300px"' }  },
        ],
        actions:{					
            "Login": Login_click
        }
	};
    //Creaci�n del objeto desde la configuraci�n
    $().w2form(def);

    //Renderizado del objeto en una div
	$('#main').w2render('form_login');

    //Atenci�n de eventos y callbacks
	function Login_click(event)
	{	
		this.save(save_callback); 		

        function save_callback(data)
	    {
	        if (data.status == 'success') 
            {                            
                window.location.replace(data.redirect_to);
            }
	    };
	};
	
</script>