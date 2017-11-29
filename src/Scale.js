/* global exports */
"use strict";

var d3 = require('d3');

// module Graphics.D3.Scale

exports.linearScale = d3.scaleLinear;

exports.powerScale = d3.scalePow;

exports.sqrtScale = d3.scaleSqrt;

exports.logScale = function() {
    return d3.scale.log();
};

exports.quantizeScale = d3.scaleQuantize;

exports.quantileScale = d3.scaleQuantile;

exports.thresholdScale = d3.scaleThreshold;

exports.ordinalScale = d3.scaleOrdinal;
