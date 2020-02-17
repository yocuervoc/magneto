var movies = 'http://localhost:3000/movies'
var app = new Vue({
    el:'body',

    created: function(){
        this.consultarApi();
    },

    methods:{
        consultarApi: function(){
            this.$http.get(movies)
            .then(function(respuesta){
                console.log(respusta);

            });
        }
    }

})