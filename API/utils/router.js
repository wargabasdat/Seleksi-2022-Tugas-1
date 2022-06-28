const express = require('express');
const router = express.Router();

const TvModel = require('./models');

// Get all data
router.get('/', async (req,res) => {
    try {
        const tvShowData = await TvModel.find();
        res.status(200).json(tvShowData);
    } catch(err) {
        console.log(err);
        res.status(404).json({
            message: err
        });
    }
});

// Post data
router.post('/', async(req, res) => {
    try {
      const newTvShow = new TvModel({
        title : req.body.title,
        airing : req.body.airing,
        synopsis : req.body.synopsis,
        average_tomatometer : req.body.average_tomatometer,
        average_audience_score : req.body.average_audience_score,
        tv_network : req.body.tv_network,
        premiere_date : req.body.premiere_date,
        genre : req.body.genre,
        main_casts : req.body.main_casts,
        num_of_season : req.body.num_of_season,
        seasons_info: req.body.seasons_info,
      });
  
      const savedTvShow = await newTvShow.save();
      res.status(201).json(savedTvShow);
    }
    catch(err) {
      res.status(400).json({message: err});
    }
});

//Get by id
router.get('/:id', async (req, res) => {
    try{
      let tvShowId = req.params.id;
      const tvShow = await TvModel.findById(tvShowId);
  
      res.status(200).json(tvShow);
    }
    catch(err) {
      res.status(404).json({message: err});
    }
});

module.exports = router;
