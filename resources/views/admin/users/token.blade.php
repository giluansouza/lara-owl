@extends('admin.layouts.admin')

@section('title', 'API Access Token')

@section('content')
  @include('admin.users.partials.breadcrumb', ['currentPage' => 'Token para acessar API'])

  <div class="flex flex-col sm:flex-row items-center justify-between">
    <h1 class="text-2xl font-bold my-4 dark:text-zinc-200">API token</h1>
  </div>

  <p class="mt-6 mb-2 font-semibold">Token</p>
  <span>{{ $token }}</span>

  <p class="mt-6 mb-2 font-semibold">Testar rotas da API com curl</p>

  <p class="mt-4 font-semibold">Usuários</p>
  <span>
    curl -X GET http://localhost/api/users \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>

  <p class="mt-4 font-semibold">Orcrims</p>
  <span>
    curl -X GET http://localhost/api/orcrims \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>

  <p class="mt-4 font-semibold">Cities</p>
  <span>
    curl -X GET http://localhost/api/cities \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>

  <p class="mt-4 font-semibold">People</p>
  <span>
    curl -X GET http://localhost/api/people \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>

  <p class="mt-4 font-semibold">Occurrences</p>
  <span>
    curl -X GET http://localhost/api/ocurrences \ <br>
    -H "Authorization: Bearer {{ $token }}" \ <br>
    -H "Accept: application/json"
  </span>
@endsection