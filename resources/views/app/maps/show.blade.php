@extends('admin.layouts.admin')

@section('title', 'Detalhe do usuário')

@section('content')
  @include('admin.users.partials.breadcrumb', ['currentPage' => 'Detalhes do usuário'])

  <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Detalhes do usuário</h1>
  </div>

  <ul class="w-full mb-4 border p-4">
    <li class="text-lg h-10"><span class="font-bold">Nome:</span> {{ $user->name }}</li>
    <li class="text-lg h-10"><span class="font-bold">E-mail:</span> {{ $user->email }}</li>
  </ul>

  <form action="{{ route('users.delete', $user->id) }}" method="POST">
    @csrf
    @method('DELETE')
    <button class="w-52 rounded-md px-2 h-10 flex items-center justify-center bg-slate-700 dark:bg-slate-500 text-white hover:bg-slate-700/80" type="submit">Excluir</button>
  </form>
@endsection