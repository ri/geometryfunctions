// Generated by CoffeeScript 1.6.3
(function() {
  var Geo;

  Geo = (function() {
    var angleRadians, p2c, x, y;

    function Geo() {}

    Geo.prototype.d2r = function(degrees) {
      return (degrees * Math.PI) / 180;
    };

    Geo.prototype.circlePoint = function(centerX, centerY, radius, angle) {
      var x, y;
      x = centerX + radius * Math.cos(degToRad(angle));
      y = centerY + radius * Math.sin(degToRad(angle));
      return {
        x: x,
        y: y
      };
    };

    Geo.prototype.areaFromRadius = function(radius) {
      return Math.PI * Math.pow(radius, 2);
    };

    Geo.prototype.radiusFromArea = function(area) {
      return Math.sqrt(area / Math.PI);
    };

    p2c = function(radius, angle) {};

    angleRadians = d2r(angle);

    x = radius * Math.cos(angleRadians);

    y = radius * Math.sin(angleRadians);

    ({
      x: x,
      y: y
    });

    return Geo;

  })();

  window.geo = Geo;

}).call(this);
