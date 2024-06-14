new Vue({
    el:".fondo",
    data:{
        form:{username:"",password:""}
    },
    mounted() {
        this.usernameInput = this.$refs.usernameInput.querySelector('input');
        this.passwordInput = this.$refs.passwordInput.querySelector('input');
        this.usernameInput.addEventListener('input', e => {
            this.form.username = e.target.value;
        });
        this.passwordInput.addEventListener('input', e => {
            this.form.password = e.target.value;
        });
    },
    methods:{
        enviarFormulario(){
            console.log(this.form)
        }
    },
    computed:{
        validarEmail(){
            var exp = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            var isValid = exp.test(this.form.username);
            if (isValid) {
                this.usernameInput.classList.remove('error');
            } else {
                this.usernameInput.classList.add('error');
            }
            return !isValid;
        },
        validarPassword(){
            var exp = /^(?=.*\d)(?=.*[a-záéíóúñ]).*[A-ZÁÉÍÓÚÜÑ]/;
            var isValid = exp.test(this.form.password);
            if (isValid) {
                this.passwordInput.classList.remove('error');
            } else {
                this.passwordInput.classList.add('error');
            }
            return !isValid;
        }
    }
})