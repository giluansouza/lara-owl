<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>OWL</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased dark:bg-black dark:text-white/50">
        <div class="bg-gray-50 text-black/50 dark:bg-black dark:text-white/50">
            {{-- <img id="background" class="absolute -left-20 top-0 w-full h-full" src={{ asset('img/bg.jpeg') }} alt="Laravel background" /> --}}
            <div class="relative min-h-screen flex flex-col items-center justify-start selection:bg-[#FF2D20] selection:text-white">
                <header class="w-full bg-gradient-to-r from-blue-700 via-blue-800 to-gray-900 py-8">
                    <div class="flex flex-row items-center justify-between relative w-full h-full max-w-2xl lg:max-w-7xl text-zinc-50 mx-auto">
                        <div class="flex lg:justify-center lg:col-start-2">
                            <h1>OWL!</h1>
                        </div>
                        @if (Route::has('login'))
                            <nav class="-mx-3 flex flex-1 justify-end">
                                @auth
                                    <a
                                        href="{{ url('/dashboard') }}"
                                        class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                                    >
                                        Dashboard
                                    </a>
                                @else
                                    <a
                                        href="{{ route('login') }}"
                                        class="rounded-md px-3 py-2 text-zinc-200 ring-1 ring-transparent transition hover:text-zinc-200/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                                    >
                                        Entrar
                                    </a>
    
                                    @if (Route::has('register'))
                                        <a
                                            href="{{ route('register') }}"
                                            class="rounded-md px-3 py-2 text-zinc-200 ring-1 ring-transparent transition hover:text-zinc-200/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                                        >
                                            Criar conta
                                        </a>
                                    @endif
                                @endauth
                            </nav>
                        @endif
                    </div>
                </header>
                <div class="flex-1 flex flex-col relative w-full h-full max-w-2xl lg:max-w-7xl">
                    <main class="flex-1 flex flex-col items-center justify-center mt-6">
                        <h1 class="text-xl md:text-6xl py-2 text-center font-bold bg-gradient-to-r from-rose-400 via-fuchsia-500 to-indigo-500 bg-clip-text text-transparent">
                            Modern of Diagramming & Visual Collaboration
                        </h1>

                        <h3 class="text-lg md:text-2xl font-semibold text-zinc-400 mt-6 py-2 text-center">Try the Coruja AI, Owl, and Visual Diagramming Suite</h3>
                        <a href="{{ route('register') }}" class="text-center md:min-w-72 mt-8 bg-gradient-to-r from-blue-700 via-blue-800 to-gray-900 hover:from-rose-700/80 hover:to-pink-600/80 text-white font-bold py-4 px-8 rounded">
                            Get Started <i class="ml-2 fas fa-arrow-right"></i>
                        </a>
                    </main>

                    <footer class="pb-2 pt-16 text-center text-sm text-black dark:text-white/70">
                        OWL v0.1.0
                    </footer>
                </div>
            </div>
        </div>
    </body>
</html>
