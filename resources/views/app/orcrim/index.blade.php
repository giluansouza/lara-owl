@extends('app.layouts.app')

@section('title', 'Organizações')

@section('content')
  @include('app.orcrim.partials.breadcrumb', ['currentPage' => 'Organizações'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Listando organizações</h1>
  {{-- <a class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" href="{{ route('users.create') }}">Criar novo usuário</a> --}}
 </div>

  <x-alert />

  <table class="w-full mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Nome</th>
      <th style="border: 1px solid #ccc">Qtd de membros</th>
      <th style="border: 1px solid #ccc">Qtd de ocorrências</th>
      <th>Ações</th>
    </thead>
    <tbody>
    @forelse ($orcrim as $element)
    <tr class="w-full min-h-10 h-10">
      <td class="px-2 border dark:text-zinc-200">{{ $element->orcrim_name }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ $element->people_count }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ $element->occurrences_count }}</td>
      <td class="px-2 gap-4 border dark:text-zinc-200 text-center">
        <div class="flex gap-4">
          <button onclick="showGraphModal({{ $element->id }})" class="p-1 text-blue-500 hover:underline">
            <i class="fa-solid fa-diagram-project"></i>
          </button>
          <button onclick="showMapModal({{ $element->id }})" class="p-1 text-green-500 hover:underline">
            <i class="fa-solid fa-map"></i>
          </button>
        </div>
      </td>
    </tr>
    @empty
    <td colspan="3">Nenhuma organização encontrada.</td>
    @endforelse
    </tbody>
  </table>

  {{ $orcrim->links() }}

  <!-- Modal de Visualização do Gráfico -->
  @include('app.orcrim.modal')
  @include('app.orcrim.modal-map')
@endsection