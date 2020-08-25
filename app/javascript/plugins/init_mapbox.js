import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/saw29/cke8sw28n3iqg19p35lwwh6zx',
    });


    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

        const el = document.createElement('div');
        el.className = 'marker';

        new mapboxgl.Marker(el)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

