<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>@yield('title') - Admin</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <!-- Scripts -->
  @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-zinc-100 dark:bg-zinc-900 min-h-screen flex flex-col">
  @include('layouts.navigation')

  <div class="flex-1 max-w-7xl mx-auto sm:px-6 lg:px-8 w-full mb-4">
    @yield('content')
  </div>

  <footer class="bg-zinc-200 dark:bg-zinc-800 text-center py-4">
    &copy; {{ date('Y') }}
  </footer>
</body>
</html>