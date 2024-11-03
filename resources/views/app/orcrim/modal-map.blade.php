<div id="mapModal" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
  <div class="p-2 bg-white rounded-lg overflow-hidden shadow-xl transform transition-all" style="width: 80%; height: 90%;">
      <div class="px-4 pt-3 pb-4 sm:p-4" style="height: calc(100% - 50px);"> <!-- Ajuste para manter espaço para o botão -->
          <h3 class="text-lg mb-2 leading-6 font-medium text-gray-900" id="modal-title">
              Mapa do Grupo-Crime
          </h3>
          <!-- Container do Mapa -->
        <div id="map" style="height: 95%; width: 100%;"></div>
      </div>
      <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
          <button type="button" onclick="closeMapModal()" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
              Fechar
          </button>
      </div>
  </div>
</div>

<!-- Adicionar o CSS do Leaflet -->
<link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />

<!-- Adicionar o JavaScript do Leaflet -->
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

<!-- Script para Configurar e Exibir o Mapa -->
<script>
    let map; // Declare map variable in global scope

    function showMapModal(orcrimId) {
        // Exibir o modal
        document.getElementById('mapModal').classList.remove('hidden');

        // Invalidate size to make sure the map is resized correctly
        if (map) {
            map.invalidateSize();
        } else {
            initializeMap(); // Initialize map if it hasn't been created yet
        }

        // Limpar polígonos anteriores
        clearMap();

        // Buscar dados do servidor via AJAX
        fetch(`grupo-crime/maps/${orcrimId}`)
            .then(response => response.json())
            .then(data => {
                // Renderizar polígonos no mapa com os dados recebidos
                renderPolygons(data);
            })
            .catch(error => console.error('Erro ao buscar dados:', error));
    }

    function closeMapModal() {
        document.getElementById('mapModal').classList.add('hidden');
    }


    function initializeMap() {
        map = L.map('map').setView([-9.424957, -40.505760], 13);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);
    }

    function clearMap() {
        // Limpa todos os layers do mapa
        map.eachLayer(function (layer) {
            if (layer instanceof L.GeoJSON) {
                map.removeLayer(layer);
            }
        });
    }

    function renderPolygons(polygons) {
        polygons.forEach(function(element) {
            let geojson = JSON.parse(element.geojson);
            geojson.coordinates[0] = geojson.coordinates[0].map(function(coord) {
                return [coord[0], coord[1]];
            });

            let geojsonLayer = L.geoJSON(geojson, {
                style: {
                    color: 'red',
                    weight: 2,
                    opacity: 1,
                    fillOpacity: 0.3
                }
            }).addTo(map);
            geojsonLayer.bindPopup(`${element.orcrim_name}<br>Total de Pessoas: ${element.total_people}<br>Total de Ocorrências: ${element.total_occurrences}`);
        });
    }

    document.addEventListener('DOMContentLoaded', function() {
        initializeMap(); // Initialize map on page load
    });
</script>
