@extends('app.layouts.app')

@section('title', 'Pessoas')

@section('content')
  @include('app.people.partials.breadcrumb', ['currentPage' => 'Pessoas'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Listando pessoas</h1>
  {{-- <a class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" href="{{ route('users.create') }}">Criar novo usuário</a> --}}
 </div>

  <x-alert />

  <table class="w-full mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Imagem</th>
      <th style="border: 1px solid #ccc">Nome</th>
      <th style="border: 1px solid #ccc">CPF</th>
      <th>Ações</th>
    </thead>
    <tbody>
    @forelse ($people as $element)
    <tr class="w-full min-h-10 h-10">
      <td class="w-[150px] px-2 border dark:text-zinc-200">
        @if ($element->image)
          <img class="w-[150px] h-[150px]" src="{{ $element->image }}" />
        @endif
      </td>
      <td class="px-2 border dark:text-zinc-200">{{ $element->name }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ $element->cpf }}</td>
      <td class="px-2 border dark:text-zinc-200 text-center">
        <a class="hover:underline" href="{{ route('people.show', $element->id) }}">Visualizar</a>
        <span>|</span>
        <a class="hover:underline" href="{{ route('people.edit', $element->id) }}">Editar</a>
      </td>
    </tr>
    @empty
    <td colspan="3">Nenhum usuário encontrado.</td>
    @endforelse
    </tbody>
  </table>

  {{ $people->links() }}
@endsection