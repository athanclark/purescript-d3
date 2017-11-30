/* global exports */
"use strict";

var d3 = require('d3');

// module Graphics.D3.Time

exports.timeScale = d3.scaleTime;

exports.getTicksTimeImpl = function getTicksTimeImpl (count, scale) {
  if (count) {
    return scale.ticks(count);
  } else {
    return scale.ticks();
  }
};
