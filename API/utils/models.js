const mongoose = require('mongoose');

const tvsSchema = mongoose.Schema({
    title : {
        type : String,
        required : true,
    },
    airing : {
        type : String,
        required : true,
    },
    synopsis : {
        type : String,
        required : true,
    },
    average_tomatometer : {
        type : Number,
        required : true,
    },
    average_audience_score : {
        type : Number,
        required : true,
    },
    tv_network : {
        type : String,
        required : true,
    },
    premiere_date : {
        type : String,
        required : true,
    },
    genre : {
        type : String,
        required : true,
    },
    main_casts : {
        type : Array,
        required : true,
    },
    num_of_seasons : {
        type : Number,
        required : true,
    },
    seasons_info : [{
        season_title : String,
        airing_year : Number,
        episodes : Number,
        tomatometer : Number,
        audience_score : Number
    }]
});

const TvModel = mongoose.model('TvModel', tvsSchema);

module.exports = TvModel;