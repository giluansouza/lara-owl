@extends('admin.layouts.admin')

@section('title', 'Editar usuário')

@section('content')
  @include('admin.users.partials.breadcrumb', ['currentPage' => 'Editar'])

  <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">Editar do usuário</h1>
  </div>

  <x-alert />

  <form action="{{ route('people.update', $people->id) }}" method="POST">
    @method('PUT')
    @include('app.people.partials.form')
  </form>
@endsection