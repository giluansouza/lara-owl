@extends('app.layouts.app')

@section('title', 'Análise de vínculos')

@section('content')
  @include('app.orcrim.partials.breadcrumb', ['currentPage' => 'Análise de vinculos'])

  <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Análise de vinculos</h1>
  </div>

  {{-- <ul class="w-full mb-4 border p-4">
    <li class="text-lg h-10"><span class="font-bold">Nome:</span> {{ $user->name }}</li>
    <li class="text-lg h-10"><span class="font-bold">E-mail:</span> {{ $user->email }}</li>
  </ul> --}}

  {{-- <form action="{{ route('users.delete', $user->id) }}" method="POST">
    @csrf
    @method('DELETE')
    <button class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" type="submit">Excluir</button>
  </form> --}}

  <script src="https://d3js.org/d3.v7.min.js"></script>

  <div id="graph"></div>

  <script>
        const nodesData = {!! $connections !!};
        const linksData = {!! $links !!};

        function drawGraph(nodesData, linksData) {
            console.log(nodesData, linksData);

            const nodes = Object.keys(nodesData).map(key => ({
                id: key,
                name: nodesData[key].name,
                connections: nodesData[key].connections
            }));

            const links = linksData.map(link => ({
                source: String(link.source),
                target: String(link.target)
            }));

            // Configurações para o D3.js
            const width = window.innerWidth * .9, height = 400;

            const svg = d3.select("#graph").append("svg")
                .attr("width", width)
                .attr("height", height)
                .style("background-color", "#fff");

            const g = svg.append("g");

            const zoom = d3
                .zoom()
                .scaleExtent([0.3, 5]) // Limita o zoom de 0.5x a 5x
                .on("zoom", (event) => {
                    g.attr("transform", event.transform); // Aplica o zoom e o pan ao grupo
                });

            svg.call(zoom);

            const simulation = d3.forceSimulation(nodes)
                .force("link", d3.forceLink(links).id(d => d.id).distance(50))
                .force("charge", d3.forceManyBody())
                .force("center", d3.forceCenter(width / 2, height / 2));

            // Criação de links e nós
            const link = g.append("g")
                .attr("class", "links")
                .selectAll("line")
                .data(links)
                .enter().append("line")
                .attr("stroke", "#999")  // estilo dos links
                .attr("stroke-opacity", 0.6);

            const nodeGroup = g.append("g")
                .attr("class", "nodes")
                .selectAll("g")
                .data(nodes)
                .enter().append("g");

            // Adiciona o círculo para cada nó
            nodeGroup.append("circle")
                .attr("r", d => d.connections > 1 ? d.connections * 2 : 5) // Tamanho do nó baseado nas conexões
                .attr("fill", "#69b3a2")
                .on("click", (event, d) => {
                    console.log("Clique em:", d);
                });

            // Adiciona o texto abaixo de cada nó
            nodeGroup.append("text")
                .attr("x", 0)
                .attr("y", d => d.connections > 1 ? d.connections * 2 + 10 : 15) // Posição ajustada abaixo do nó
                .attr("text-anchor", "middle")
                .attr("font-size", "0.8em")
                .attr("fill", "#000")
                .text(d => d.name);

            // Atualiza a posição dos nós e links
            simulation.nodes(nodes).on("tick", () => {
                link.attr("x1", d => d.source.x)
                    .attr("y1", d => d.source.y)
                    .attr("x2", d => d.target.x)
                    .attr("y2", d => d.target.y);

                nodeGroup.attr("transform", d => `translate(${d.x},${d.y})`);
            });

            simulation.force("link").links(links);
        }

        drawGraph(nodesData, linksData);
  </script>
@endsection