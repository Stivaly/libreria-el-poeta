new Vue({
    el: '.Ingreso',
    data: {
        type:0, //0=libros 1=revistas 2=editoriales
        form:{email:"",pasword:""}
      
    },
    computed:{
        titulo(){
            return (this.type==0)?'Libros':(this.type==1)?'Revistas':'Enciclopedias';
        }
    }
})