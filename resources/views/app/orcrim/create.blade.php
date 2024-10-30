@extends('admin.layouts.admin')

@section('title', 'Cadastrar usuário')

@section('content')
  <h2>Cadastro de usuário</h2>

  <x-alert />

  <form action="{{ route('users.store') }}" method="POST">
    @include('admin.users.partials.form')
  </form>
@endsection