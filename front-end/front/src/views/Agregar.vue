<template>
    <div class="container">
        <h1>Agregar</h1>
        <form @submit.prevent="addMovie()">
        <div class="form-group">
            
            <input type="text" class="form-control my-2" placeholder ="Nombre pelicula"
            v-model="movie.name">
            <input type="text" class="form-control my-2" placeholder ="url imagen"
            v-model="movie.url">
            <input type="text" class="form-control my-2" placeholder ="fecha YYYY-MM-DD"
            v-model="movie.date">
            
        </div>
        
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</template>
<script>
export default {
    data(){
        return{
            movie: {name: "", url: "", date: "", chairs: 10}
        }
    },
    methods: {
        addMovie(){
            console.log(this.movie);
            this.axios.post('/movies', this.movie)
            .then(res =>{
                console.log(res)
                this.movie.name=""
                this.movie.url=""
                this.movie.date=""
            })
            .catch(e =>{
                console.log(e.response);
            })
        }
        
    }
}
</script>