@extends('admin.layouts.admin')

@section('title', 'API Access Token')

@section('content')
  @include('admin.users.partials.breadcrumb', ['currentPage' => 'Token para acessar API'])

  <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">API token</h1>
  </div>

  <p class="mt-6 mb-2 font-semibold">Token</p>
  <span>{{ $token }}</span>

  <p class="mt-6 mb-2 font-semibold">Testar rotas da API com curl. Exemplo:</p>
  <span>
    curl -X GET http://localhost/api/users \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>
@endsection