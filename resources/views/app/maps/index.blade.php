@extends('app.layouts.app')

@section('title', 'Mapas')

@section('content')
  @include('app.maps.partials.breadcrumb', ['currentPage' => 'Mapas'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Lista de grupo-crime</h1>
 </div>

  <x-alert />

  <table class="w-1/2 mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Nome do Orcrim</th>
      <th>Total de Pessoas</th>
      <th>Total de Ocorrências</th>
    </thead>
    <tbody>
    @forelse ($maps as $element)
    <tr class="w-full min-h-10 h-10">
      <td class="px-2 text-center border dark:text-zinc-200">{{ $element['orcrim_name'] }}</td>
      <td class="px-2 text-center border dark:text-zinc-200">{{ $element['total_people'] }}</td>
      <td class="px-2 text-center border dark:text-zinc-200">{{ $element['total_occurrences'] }}</td>
    </tr>
    @empty
    <td colspan="3">Nenhum grupo-crime encontrado.</td>
    @endforelse
    </tbody>
  </table>

  <!-- Adicionar o CSS do Leaflet -->
  <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />

  <!-- Container do Mapa -->
  <div id="map" style="height: 600px; width: 100%; margin-top: 20px;"></div>

  <!-- Adicionar o JavaScript do Leaflet -->
  <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
  
  <!-- Script para Configurar e Exibir o Mapa -->
  <script>
    document.addEventListener('DOMContentLoaded', function() {
        var map = L.map('map').setView([-9.424957, -40.505760], 13);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        let polygons = @json($maps);

        function getColor(orcrimName) {
            switch (orcrimName) {
                case 'BDM':
                    return 'red';
                case 'Honda':
                    return 'green';
                case 'CV':
                    return 'blue';
                // Adicione mais casos conforme necessário
                default:
                    return 'gray'; // Cor padrão
            }
        }

        polygons.forEach(function(element) {
            let geojson = JSON.parse(element.geojson);
            geojson.coordinates[0] = geojson.coordinates[0].map(function(coord) {
                return [coord[1], coord[0]];
            });

            let geojsonLayer = L.geoJSON(geojson, {
                style: { color: getColor(element.orcrim_name) }
            }).addTo(map);
            geojsonLayer.bindPopup(`${element.orcrim_name}<br>Total de Pessoas: ${element.total_people}<br>Total de Ocorrências: ${element.total_occurrences}`);
        });
    });
</script>
@endsection
