@extends('app.layouts.app')

@section('title', 'Mapas')

@section('content')
    <!-- Adicionar o CSS do Leaflet -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-fullscreen@latest/dist/leaflet.fullscreen.css" />

  @include('app.maps.partials.breadcrumb', ['currentPage' => 'Mapas'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Mapa de objetos</h1>
    <a href="{{ route('polygons.create') }}" class="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-500/80">
        Criar Novo Polígono
    </a>
 </div>

  <x-alert />

  <!-- Container do Mapa -->
  <div id="map" style="height: 600px; width: 100%; margin-top: 20px;"></div>

  <!-- Legend Container -->
  <div id="legend" class="bg-white p-4 rounded-lg shadow mb-4">
    <h3 class="font-bold mb-2">Legenda</h3>
    <div id="legend-content" class="flex flex-col sm:flex-row gap-4">
      <!-- Legend items will be added here dynamically -->
    </div>
  </div>

  <table class="w-1/2 mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th class="px-2 border border-zinc-200">Nome do Poligono</th>
      <th class="px-2 border border-zinc-200">Nome da Org</th>
      <th class="px-2 border border-zinc-200">Membros</th>
      <th class="px-2 border border-zinc-200">Ocorrências na área</th>
      <th class="px-2 border border-zinc-200">Ações</th>
    </thead>
    <tbody>
    @forelse ($maps as $element)
    <tr class="w-full min-h-10 h-10">
        <td class="px-2 text-center border dark:text-zinc-200">{{ $element['polygon_name'] }}</td>
        <td class="px-2 text-center border dark:text-zinc-200">{{ $element['orcrim_name'] }}</td>
        <td class="px-2 text-center border dark:text-zinc-200">{{ $element['total_people'] }}</td>
        <td class="px-2 text-center border dark:text-zinc-200">{{ $element['total_occurrences'] }}</td>
        <td td class="px-2 text-center border dark:text-zinc-200">
            <a href="{{ route('polygons.edit', $element['id']) }}" class="text-blue-500 hover:text-blue-700">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 inline" viewBox="0 0 20 20" fill="currentColor">
                    <path d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z" />
                </svg>
            </a>
        </td>
    </tr>
    @empty
    <td colspan="3">Nenhum grupo-crime encontrado.</td>
    @endforelse
    </tbody>
  </table>

    <!-- Adicionar o JavaScript do Leaflet -->
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-fullscreen@latest/dist/Leaflet.fullscreen.min.js"></script>
  
    <!-- Script para Configurar e Exibir o Mapa -->
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        // Initialize the map
        var map = L.map('map').setView([-9.424957, -40.505760], 13);

        // Base layers definition
        var osm = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        });

        var satellite = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
            attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community',
            maxZoom: 19
        });

        var streets = L.tileLayer('https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
            maxZoom: 19
        });

        // Set default base layer
        osm.addTo(map);

        // Base layers for layer control
        var baseLayers = {
            "OpenStreetMap": osm,
            "Satélite": satellite,
            "Streets": streets
        };

        // Add full screen control
        map.addControl(new L.Control.Fullscreen({
            title: {
                'false': 'Ver em Tela Cheia',
                'true': 'Sair da Tela Cheia'
            }
        }));

        // Add layer control
        L.control.layers(baseLayers, null, {
            position: 'topright'
        }).addTo(map);

        // Add scale control
        L.control.scale({
            metric: true,
            imperial: false
        }).addTo(map);

        let polygons = @json($maps);

        // Get unique orcrim names
        const uniqueOrcrims = [...new Set(polygons.map(p => p.orcrim_name))];

        // Generate distinct colors for each orcrim
        const colorScale = {
            // Predefined vibrant colors that are visually distinct
            colors: [
                '#FF6B6B', // Red
                '#4ECDC2', // Teal
                '#45B7D9', // Light Blue
                '#96CEB4', // Sage Green
                '#D4A5A5', // Rose
                '#9B5DE5', // Purple
                '#F15BB5', // Pink
                '#FEE440', // Yellow
                '#00BBF9', // Blue
                '#00F5D4', // Mint
                '#FF9F1C', // Orange
                '#8AC926'  // Green
            ],
            getColor: function(index) {
                return this.colors[index % this.colors.length];
            }
        };

        // Create color mapping for orcrims
        const orcrimColors = {};
        uniqueOrcrims.forEach((orcrim, index) => {
            orcrimColors[orcrim] = colorScale.getColor(index);
        });

        // Add legend
        const legendContent = document.getElementById('legend-content');
        Object.entries(orcrimColors).forEach(([orcrim, color]) => {
            const legendItem = document.createElement('div');
            legendItem.className = 'flex items-center space-x-2';
            legendItem.innerHTML = `
                <div class="w-4 h-4 rounded" style="background-color: ${color}"></div>
                <span class="text-sm">${orcrim}</span>
            `;
            legendContent.appendChild(legendItem);
        });

        // Add polygons to map
        polygons.forEach(function(element) {
            let geojson = JSON.parse(element.geojson);
            geojson.coordinates[0] = geojson.coordinates[0].map(function(coord) {
                return [coord[0], coord[1]];
            });

            let geojsonLayer = L.geoJSON(geojson, {
                style: {
                    color: orcrimColors[element.orcrim_name],
                    weight: 2,
                    opacity: 1,
                    fillOpacity: 0.3
                }
            }).addTo(map);

            // Enhanced popup with more styling
            geojsonLayer.bindPopup(`
                <div class="p-2">
                    <h3 class="font-bold mb-2" style="color: ${orcrimColors[element.orcrim_name]}">
                        ${element.orcrim_name}
                    </h3>
                    <div class="space-y-1">
                        <p><strong>Total de Pessoas:</strong> ${element.total_people}</p>
                        <p><strong>Total de Ocorrências:</strong> ${element.total_occurrences}</p>
                    </div>
                </div>
            `, {
                maxWidth: 300
            });
        });

        // Fit map to polygons bounds
        if (polygons.length > 0) {
            const bounds = L.featureGroup(
                polygons.map(element => {
                    let geojson = JSON.parse(element.geojson);
                    geojson.coordinates[0] = geojson.coordinates[0].map(coord => [coord[0], coord[1]]);
                    return L.geoJSON(geojson);
                })
            ).getBounds();
            map.fitBounds(bounds);
        }
    });
    </script>
@endsection