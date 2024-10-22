@extends('app.layouts.app')

@section('title', 'Ocorrências')

@section('content')
  @include('app.occurrences.partials.breadcrumb', ['currentPage' => 'Ocorrências'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Listando ocorrências</h1>
  {{-- <a class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" href="{{ route('occurrences.create') }}">Criar novo usuário</a> --}}
 </div>

  <x-alert />

  <table class="w-full mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Data</th>
      <th style="border: 1px solid #ccc">Descrição</th>
      <th style="border: 1px solid #ccc">Coordenadas (lat,lng)</th>
      <th>Ações</th>
    </thead>
    <tbody>
    @forelse ($occurrences as $occurrence)
    <tr class="w-full min-h-10 h-10">
      <td class="px-2 border dark:text-zinc-200">{{ \Carbon\Carbon::parse($occurrence->occurred_at)->format('d/m/Y H:i') }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ Str::limit($occurrence->description, 80) }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ $occurrence->latitude.', '.$occurrence->longitude }}</td>
      <td class="px-2 border dark:text-zinc-200 text-center">
        {{-- <a class="hover:underline" href="{{ route('occurrence.show', $occurrence->id) }}">Visualizar</a> --}}
        {{-- <span>|</span> --}}
        {{-- <a class="hover:underline" href="{{ route('occurrence.edit', $occurrence->id) }}">Editar</a> --}}
      </td>
    </tr>
    @empty
    <td colspan="3">Nenhum usuário encontrado.</td>
    @endforelse
    </tbody>
  </table>

  {{ $occurrences->links() }}
@endsection