@extends('app.layouts.app')

@section('title', 'Organizações')

@section('content')
  @include('app.organizations.partials.breadcrumb', ['currentPage' => 'Organização'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Listando organizações</h1>
  {{-- <a class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" href="{{ route('users.create') }}">Criar novo usuário</a> --}}
 </div>

  <x-alert />

  <table class="w-full mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Nome</th>
      <th>Ações</th>
    </thead>
    <tbody>
    @forelse ($organizations as $element)
    <tr class="w-full min-h-10 h-10">
      <td class="px-2 border dark:text-zinc-200">{{ $element->name }}</td>
      <td class="px-2 border dark:text-zinc-200 text-center">
        {{-- <a class="hover:underline" href="{{ route('users.show', $user->id) }}">Visualizar</a> --}}
        {{-- <span>|</span> --}}
        {{-- <a class="hover:underline" href="{{ route('users.edit', $user->id) }}">Editar</a> --}}
      </td>
    </tr>
    @empty
    <td colspan="3">Nenhuma organização encontrada.</td>
    @endforelse
    </tbody>
  </table>

  {{ $organizations->links() }}
@endsection