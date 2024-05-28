new Vue({
    el:".fondo",
    data:{
        form:{email:"",password:""}
    },
    methods:{
        enviarFormulario(){
            console.log(this.form)
        }
    },
    computed:{
        validarEmail(){
            var exp = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if(exp.test(this.form.email)){
                return false;
            }else{
                return true;
            }
        },
        validarPassword(){
            var exp = /^(?=.*\d)(?=.*[a-záéíóúñ]).*[A-ZÁÉÍÓÚÜÑ]/;
            if(exp.test(this.form.password)){
                return false;
            }else{
                return true;
            }
        }
    }
})

