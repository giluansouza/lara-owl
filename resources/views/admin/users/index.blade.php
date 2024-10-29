@extends('admin.layouts.admin')

@section('title', 'Usuários')

@section('content')
  @include('admin.users.partials.breadcrumb', ['currentPage' => 'Usuários'])

 <div class="flex flex-col sm:flex-row items-center justify-between">
  <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Listando usuários</h1>
  <a class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" href="{{ route('users.create') }}">Criar novo usuário</a>
 </div>

  <x-alert />

  <table class="w-full mb-4">
    <thead class="w-full bg-zinc-400 h-9 border">
      <th style="border: 1px solid #ccc">Nome</th>
      <th style="border: 1px solid #ccc">E-mail</th>
      <th>Ações</th>
    </thead>
    <tbody>
    @forelse ($users as $user)
    <tr class="w-full min-h-10 h-10">
      <td class="px-2 border dark:text-zinc-200">{{ $user->name }}</td>
      <td class="px-2 border dark:text-zinc-200">{{ $user->email }}</td>
      <td class="px-2 border dark:text-zinc-200 text-center">
        <a class="hover:underline" href="{{ route('users.show', $user->id) }}">Visualizar</a>
        <span>|</span>
        <a class="hover:underline" href="{{ route('users.edit', $user->id) }}">Editar</a>
      </td>
    </tr>
    @empty
    <td colspan="3">Nenhum usuário encontrado.</td>
    @endforelse
    </tbody>
  </table>

  {{ $users->links() }}
@endsection