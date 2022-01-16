import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("This is pubs")
    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/ajboxell/cky8kbnz705s414s83sbtszlp'
    });

    this._addMarkersToMap();

    this._fitMapToMarkers();
  }

  _addMarkersToMap() {
  this.markersValue.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window);

    const customMarker = document.createElement('div');
    customMarker.className = 'marker';
    customMarker.style.backgroundImage = `url('${marker.image_url}')`;
    customMarker.style.backgroundSize = 'contain';
    customMarker.style.width = '25px';
    customMarker.style.height = '25px';
    customMarker.idName = `${marker.id}`;
    customMarker.pub = `${marker.pub}`;

    new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map);
  });
  }

  _fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}
