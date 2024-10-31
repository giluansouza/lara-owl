<div id="graphModal" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center">
  <div class="p-2 bg-white rounded-lg overflow-hidden shadow-xl transform transition-all" style="width: 80%; height: 90%;">
      <div class="px-4 pt-5 pb-4 sm:p-6 sm:pb-4" style="height: calc(100% - 50px);"> <!-- Ajuste para manter espaço para o botão -->
          <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
              Análise de Vínculos
          </h3>
          <div id="graph" style="width: 100%; height: 100%;"></div>
      </div>
      <div class="px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
          <button type="button" onclick="closeGraphModal()" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
              Fechar
          </button>
      </div>
  </div>
</div>

<script src="https://d3js.org/d3.v7.min.js"></script>
<script>
  function showGraphModal(orcrimId) {
      // Exibir o modal
      document.getElementById('graphModal').classList.remove('hidden');

      // Buscar dados do servidor via AJAX
      fetch(`grupo-crime/connections/${orcrimId}`)
          .then(response => response.json())
          .then(data => {
              drawGraph(data.nodes, data.links);  // Atualizar gráfico com novos dados
          })
          .catch(error => console.error('Erro ao buscar dados:', error));
  }

  function closeGraphModal() {
      document.getElementById('graphModal').classList.add('hidden');
      d3.select("#graph").selectAll("*").remove();  // Limpar gráfico
  }

  function drawGraph(nodesData, linksData) {
      const nodes = Object.keys(nodesData).map(key => ({
          id: key,
          name: nodesData[key].name,
          image: nodesData[key].image,
          connections: nodesData[key].connections
      }));

      const links = linksData.map(link => ({
          source: String(link.source),
          target: String(link.target)
      }));

      // Obter dimensões da div do gráfico
      const width = document.getElementById('graph').clientWidth;
      const height = document.getElementById('graph').clientHeight;

      const svg = d3.select("#graph").append("svg")
          .attr("width", width)
          .attr("height", height)
          .style("background-color", "#fff");

      const g = svg.append("g");

      const zoom = d3.zoom().scaleExtent([0.3, 5]).on("zoom", (event) => {
          g.attr("transform", event.transform);
      });

      svg.call(zoom);

      const simulation = d3.forceSimulation(nodes)
          .force("link", d3.forceLink(links).id(d => d.id).distance(50))
          .force("charge", d3.forceManyBody())
          .force("center", d3.forceCenter(width / 2, height / 2));

      const link = g.append("g").attr("class", "links").selectAll("line")
          .data(links)
          .enter().append("line")
          .attr("stroke", "#999")
          .attr("stroke-opacity", 0.6);

      const nodeGroup = g.append("g").attr("class", "nodes").selectAll("g")
          .data(nodes)
          .enter().append("g");

      nodeGroup.append("circle")
          .attr("r", d => d.connections > 1 ? d.connections * 2 : 8)
          .attr("fill", "#69b3a2")
          .on("click", (event, d) => {
              console.log("Clique em:", d);
          });

      nodeGroup.append("text")
          .attr("x", 0)
          .attr("y", d => d.connections > 1 ? d.connections * 2 + 5 : 12)
          .attr("text-anchor", "middle")
          .attr("font-size", "0.3em")
          .attr("fill", "#999")
          .text(d => d.name);

      nodeGroup
          .filter(
              (d) => d.image && typeof d.image === "string" && d.image.trim() !== ""
          )
          .append("clipPath") 
          .attr("id", (d, i) => `clipCircle${i}`)
          .append("circle")
          .attr("cx", 0)
          .attr("cy", 0)
          .attr("r", d => d.connections > 1 ? d.connections * 2 : 8); // Raio do círculo

      nodeGroup
          .filter(
              (d) => d.image && typeof d.image === "string" && d.image.trim() !== ""
          )
          .append("image")
          .attr("xlink:href", (d) => d.image)
          .attr("x", d => -(d.connections > 1 ? d.connections * 4 : 16) / 2) // Centraliza a imagem no círculo
          .attr("y", d => -(d.connections > 1 ? d.connections * 4 : 16) / 2) // Centraliza a imagem no círculo
          .attr("width", d => d.connections > 1 ? d.connections * 4 : 16) // Tamanho da imagem
          .attr("height", d => d.connections > 1 ? d.connections * 4 : 16) // Tamanho da imagem
          .attr("clip-path", (d, i) => `url(#clipCircle${i})`) // Aplica o clip-path
          .attr("preserveAspectRatio", "xMidYMid slice") // Mantém a proporção
          .on("error", function () {
              d3.select(this).remove(); // Remove a imagem se ocorrer um erro ao carregar
          });

      simulation.nodes(nodes).on("tick", () => {
          link.attr("x1", d => d.source.x)
              .attr("y1", d => d.source.y)
              .attr("x2", d => d.target.x)
              .attr("y2", d => d.target.y);

          nodeGroup.attr("transform", d => `translate(${d.x},${d.y})`);
      });

      simulation.force("link").links(links);
  }
</script>
