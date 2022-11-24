import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

  connect() {

    this.#addMarkersToMap();
    this.#fitMapToMarkers();

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                           mapboxgl: mapboxgl }));

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb" // <-- use your own!
    });

  };
